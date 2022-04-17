import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pokemon_apps/constat/ui_helper.dart';
import 'package:pokemon_apps/model/pokemon_model.dart';

import '../widgets/poke_information.dart';
import '../widgets/poke_names_type.dart';

class DetailsPage extends StatelessWidget {
  final PokemonModel item;

  const DetailsPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/pokeball.png';
    return context.orientation == Orientation.portrait
        ? _portraitScreen(pokeballImageUrl)
        : _landScapeScreen(pokeballImageUrl);
  }

  Scaffold _landScapeScreen(String pokeballImageUrl) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(item.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getDefaultPadding(),
              child: IconButton(
                iconSize: 18.w,
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.7,
                        width: Get.width / 3,
                        child: Column(
                          children: [
                            PokeNamesAndTypes(
                              pokemon: item,
                            ),
                            Expanded(
                              child: Hero(
                                  tag: item.id!,
                                  child: CachedNetworkImage(
                                    imageUrl: item.img!,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: PokeInformation(item: item))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Scaffold _portraitScreen(String pokeballImageUrl) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(item.type![0]),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: IconButton(
              iconSize: 18.w,
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          PokeNamesAndTypes(
            pokemon: item,
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
              child: Stack(
            children: [
              Positioned(
                child: Image.asset(pokeballImageUrl,
                    height: 0.15.sh, fit: BoxFit.fitHeight),
                right: 0,
                top: 0,
              ),
              Positioned(
                child: PokeInformation(item: item),
                left: 0,
                right: 0,
                bottom: 0,
                top: 0.12.sh,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Hero(
                    tag: item.id!,
                    child: CachedNetworkImage(imageUrl: item.img!)),
              )
            ],
          )),
        ],
      )),
    );
  }
}
