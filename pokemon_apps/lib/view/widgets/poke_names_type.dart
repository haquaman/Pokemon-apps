import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_apps/constat/constants.dart';
import 'package:pokemon_apps/constat/ui_helper.dart';
import 'package:pokemon_apps/model/pokemon_model.dart';

class PokeNamesAndTypes extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeNamesAndTypes({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UIHelper.getDefaultPadding() * 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  pokemon.name!,
                  style: constants.getPokemonNameTextStyle(),
                ),
              ),
              Text(
                '#${pokemon.num!.toString()}',
                style: constants.getPokemonNameTextStyle(),
              )
            ],
          ),
          SizedBox(height: Get.height * 0.02),
          Chip(
              label: Text(
            pokemon.type!.join(' , ').toString(),
            style: constants.getPokemonChipTextStyle(),
          ))
        ],
      ),
    );
  }
}
