import 'package:appable/src/constraints/colors.dart';
import 'package:appable/src/constraints/sizes.dart';
import 'package:flutter/material.dart';

class ElevatedButtonTheme {
  ElevatedButtonTheme._();

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape:const RoundedRectangleBorder(),
      foregroundColor: whiteColor,
      backgroundColor: const Color.fromARGB(255, 2, 135, 243),
     // side:const BorderSide(color: secondaryColor),
      padding: const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape:const RoundedRectangleBorder(),
      foregroundColor: secondaryColor,
      backgroundColor: whiteColor,
      side:const BorderSide(color: secondaryColor),
      padding:const EdgeInsets.symmetric(vertical: buttonHeight),
    ),
  );
}
