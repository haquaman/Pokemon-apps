// ignore:
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pokemon_apps/constat/constants.dart';
import 'package:pokemon_apps/constat/ui_helper.dart';
import 'package:pokemon_apps/model/pokemon_model.dart';
import 'package:pokemon_apps/view/widgets/pokeImages.dart';
import '../pages/details_page.dart';

class PokemonListitem extends StatelessWidget {
  final PokemonModel item;
  const PokemonListitem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => GestureDetector(
        onTap: () {
          Get.to(() => DetailsPage(
                item: item,
              ));
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
          elevation: 3,
          shadowColor: Colors.white,
          color: UIHelper.getColorFromType(item.type![0]),
          child: Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name.toString(),
                  style: constants.getPokemonNameTextStyle(),
                ),
                Chip(
                    label: Text(
                  item.type![0].toString(),
                  style: constants.getPokemonChipTextStyle(),
                )),
                Expanded(child: PokeImages(pokemon: item))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
