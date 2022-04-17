// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_apps/view/widgets/pokemonListitem.dart';

import '../../model/pokemon_model.dart';
import '../../services/pokemon_apps_api.dart';

class PokemonList extends StatelessWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: PokeApi.getPokemonData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> _pokeList = snapshot.data!;

          return GridView.builder(
              itemCount: _pokeList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
              itemBuilder: (context, index) =>
                  PokemonListitem(item: _pokeList[index]));
        } else if (snapshot.hasError) {
          // ignore: prefer_const_constructors
          return Center(
            child: Text('veri gelmedi '),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
