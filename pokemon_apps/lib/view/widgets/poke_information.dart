import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_apps/constat/constants.dart';
import 'package:pokemon_apps/constat/ui_helper.dart';
import 'package:pokemon_apps/model/pokemon_model.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel item;
  const PokeInformation({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.w)),
          color: Colors.white),
      child: Padding(
        padding: UIHelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _generatedRow('Name', item.name),
            _generatedRow('Height', item.height),
            _generatedRow('Spawn Time', item.spawnTime),
            _generatedRow('Weakness', item.weaknesses),
            _generatedRow('Pro Evolution', item.prevEvolution),
            _generatedRow('Next Evolution', item.nextEvolution),
          ],
        ),
      ),
    );
  }

  _generatedRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: constants.getPokeInfoLabelTextStyle(),
        ),
        if ((value is List) && value.isNotEmpty)
          Text(
            value.join(' , '),
            style: constants.getPokeInfoTextStyle(),
          )
        else if (value == null)
          Text(
            'Not Avaible',
            style: constants.getPokeInfoTextStyle(),
          )
        else
          Text(
            value.toString(),
            style: constants.getPokeInfoTextStyle(),
          )
      ],
    );
  }
}
