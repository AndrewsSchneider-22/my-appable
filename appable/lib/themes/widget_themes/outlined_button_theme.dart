import 'package:appable/src/constraints/colors.dart';
import 'package:appable/src/constraints/sizes.dart';
import 'package:flutter/material.dart';

class OutlinedButtonTheme {
  OutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      foregroundColor: secondaryColor,
                      side: const BorderSide(color: Colors.white),
                      padding:
                          const EdgeInsets.symmetric(vertical: buttonHeight),
                    ),
  );


  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      foregroundColor: whiteColor,
                      backgroundColor: secondaryColor,
                      side: const BorderSide(color: whiteColor),
                      padding:
                          const EdgeInsets.symmetric(vertical: buttonHeight),
                    ),
  );
}