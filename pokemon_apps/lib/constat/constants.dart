import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class constants {
  static const String tittle = 'Pokedex';
  static TextStyle getTittleTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(48));
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(20));
  }

  static TextStyle getPokemonChipTextStyle() {
    return TextStyle(color: Colors.white, fontSize: _calculateFontSize(20));
  }

  static _calculateFontSize(int i) {
    return i.sp;
  }

  static getPokeInfoLabelTextStyle() {
    return TextStyle(
        fontSize: _calculateFontSize(20), fontWeight: FontWeight.bold);
  }

  static getPokeInfoTextStyle() {
    return TextStyle(fontSize: _calculateFontSize(16));
  }
}
