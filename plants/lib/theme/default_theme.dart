import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData defaultTheme() {
  return ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 156, 181, 125),
    primaryColor: const Color(0xffCFD2CF),
    textTheme: GoogleFonts.montserratTextTheme(),
  );
}
