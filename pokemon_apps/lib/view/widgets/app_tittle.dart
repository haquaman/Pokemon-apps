import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_apps/constat/constants.dart';

import '../../constat/ui_helper.dart';

// ignore: must_be_immutable
class AppTittle extends StatelessWidget {
  AppTittle({Key? key}) : super(key: key);
  String pokeballImageUrl = 'images/pokeball.png';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                constants.tittle,
                style: constants.getTittleTextStyle(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Image.asset(pokeballImageUrl,
                  width: Get.height * 0.2,
                  height: Get.height * 0.2,
                  fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
