//import 'package:appable/themes/widget_themes/elevated_button_theme.dart';
import 'package:appable/themes/widget_themes/outlined_button_theme.dart' as appableOutlinedButtonTheme;
import 'package:appable/themes/widget_themes/elevated_button_theme.dart' as appableElevatedButtonTheme;
//import 'package:appable/themes/widget_themes/outlined_button_theme.dart';
import 'package:appable/themes/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';


class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextThem,
    outlinedButtonTheme: appableOutlinedButtonTheme.OutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: appableElevatedButtonTheme.ElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextThem,
    outlinedButtonTheme: appableOutlinedButtonTheme.OutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: appableElevatedButtonTheme.ElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
