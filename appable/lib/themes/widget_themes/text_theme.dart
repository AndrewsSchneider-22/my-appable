import 'package:appable/src/constraints/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  TTextTheme._(); //To avoid creating instance

  /* -- Light Text Theme -- */
  static TextTheme lightTextThem = TextTheme(
    displayLarge: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: darkColor),
    displayMedium: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: darkColor),
    displaySmall: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700, color: darkColor),
    headlineMedium: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600, color: darkColor),
    titleLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600, color: darkColor),
    bodyLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: darkColor),
    bodyMedium: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: darkColor)  
  ); 

  /* -- Dark Theme --*/
  static TextTheme darkTextThem = TextTheme(
    displayLarge: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: whiteColor),
    displayMedium: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: whiteColor),
    displaySmall: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700, color: whiteColor),
    headlineMedium: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600, color: whiteColor),
    titleLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600, color: whiteColor),
    bodyLarge: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: whiteColor),
    bodyMedium: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: whiteColor)  
  ); 
}