// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pokemon_apps/model/pokemon_model.dart';

class selectedPokemonControl extends GetxController {
  final Rx<PokemonModel> _selectedPoke = PokemonModel().obs;

  void setVal(PokemonModel val) {
    _selectedPoke.value = val;
  }
}

class ScreenController extends GetxController {
  final Rx<Orientation> sc = Orientation
      .portrait.obs; //ScreenUtil().orientation == Orientation.portrait

  void setVal() {
    sc.value = ScreenUtil().orientation;
  }
}
