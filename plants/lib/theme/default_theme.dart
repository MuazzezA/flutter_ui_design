import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData defaultTheme() {
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xffEFEAD8),
    primaryColor: const Color(0xffBBBFCA),
    textTheme: GoogleFonts.montserratTextTheme(),
  );
}
