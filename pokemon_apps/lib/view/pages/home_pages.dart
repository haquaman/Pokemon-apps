// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:pokemon_apps/model/pokemon_model.dart';
import 'package:pokemon_apps/services/pokemon_apps_api.dart';

import '../widgets/app_tittle.dart';
import '../widgets/pokemom_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => Column(
        children: [
          AppTittle(),
          Expanded(
            child: Scaffold(
              body: PokemonList(),
            ),
          ),
        ],
      ),
    );
  }
}
