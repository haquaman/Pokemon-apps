// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'view/pages/home_pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(393, 830),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Pokedex',
            theme: ThemeData.dark().copyWith(
              textTheme: GoogleFonts.latoTextTheme(
                Theme.of(context).textTheme,
              ),
            ),
            home: Scaffold(
              body: const HomePage(),
            ),
          );
        });
  }
}
