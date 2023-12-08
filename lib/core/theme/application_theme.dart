import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: const Color(0xFFB7935F),
      colorScheme: ColorScheme.fromSeed(
        primary: Color(0xFFF8F8F8),
        seedColor:  Color(0xFFB7935F),
        onPrimary: Color(0xFFB7935F),
        onSecondary: Colors.black,
        onBackground: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFFB7935F),
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          size: 32,
          color: Colors.black
        ),
        selectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 28
        ),
        unselectedItemColor: Colors.white,
      ),
      dividerColor: Color(0xFFB7935F),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.black,
      ),
      bodyLarge:GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w500,
        fontSize: 25,
        color: Colors.black,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.black,
      )));

  static ThemeData darkTheme = ThemeData(
    primaryColor: Color(0xFF141A2E),
      colorScheme: ColorScheme.fromSeed(
        primary: Color(0xFF141A2E),
        seedColor: Color(0xFF141A2E),
        onPrimary: Color(0xFFFACC1D),
        onSecondary: Color(0xFFFACC1D),
        onBackground: Colors.black,
      ),
      scaffoldBackgroundColor: Colors.transparent,
       appBarTheme: AppBarTheme(
         iconTheme: const IconThemeData(
           color: Colors.white
         ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )),
            cardColor: Colors.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF141A2E),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
          size: 32,
          color: Color(0xFFFACC1D)
      ),
      selectedItemColor: Color(0xFFFACC1D),
      unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 28
      ),
      unselectedItemColor: Colors.white,
    ),
  textTheme: TextTheme(
  titleLarge: GoogleFonts.elMessiri(
  fontWeight: FontWeight.bold,
  fontSize: 30,
  color: Colors.white,
  ),
  bodyLarge:GoogleFonts.elMessiri(
  fontWeight: FontWeight.bold,
  fontSize: 25,
  color: Colors.white,
  ),
  bodyMedium: GoogleFonts.elMessiri(
  fontWeight: FontWeight.w500,
  fontSize: 25,
  color: Colors.white,
  ),
  bodySmall: GoogleFonts.elMessiri(
  fontWeight: FontWeight.bold,
  fontSize: 18,
  color: Colors.white,
  )),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: const Color(0xFF141A2E).withOpacity(0.9),
  ) ,
  dividerColor:const Color(0xFFFACC1D),
  );
}
