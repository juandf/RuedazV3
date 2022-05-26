import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData darkTheme = ThemeData(
  fontFamily: GoogleFonts.montserrat().fontFamily,
  scaffoldBackgroundColor: const Color(0xFF1E2124),
  primaryColor: const Color(0xFF00D2EA),
  primaryColorDark: const Color(0xFF00ABBB),
  primaryColorLight: const Color(0xFF75EBF4),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF00D2EA),
    secondary: Color(0xFF00ABBB),
    surface: Color(0xffffffff),
    background: Color(0xffffffff),
    error: Color(0xFFB00020),
    onPrimary: Color(0xff000000),
    onSecondary: Color(0xff000000),
    onSurface: Color(0xff000000),
    onBackground: Color(0xff000000),
    onError: Color(0xffffffff),
    brightness: Brightness.light,
  ),
  textTheme: TextTheme(
    headline1: GoogleFonts.nunito(
      color: const Color(0x8a000000),
      fontSize: 36.0,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.normal,
    ),
    headline2: GoogleFonts.nunito(
      color: const Color(0x8a000000),
      fontSize: 24.0,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.italic,
    ),
    headline3: GoogleFonts.nunito(
      color: const Color(0x8a000000),
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    headline4: GoogleFonts.nunito(
      color: const Color(0x8a000000),
      fontSize: 24,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.normal,
    ),
    headline5: GoogleFonts.nunito(
      color: const Color(0xdd000000),
      fontSize: 24,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    headline6: GoogleFonts.nunito(
      color: const Color(0xdd000000),
      fontSize: 20,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.normal,
    ),
    subtitle1: GoogleFonts.nunito(
      color: const Color(0xdd000000),
      fontSize: 16,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.normal,
    ),
    bodyText1: GoogleFonts.nunito(
      color: const Color(0xdd000000),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyText2: GoogleFonts.nunito(
      color: const Color(0xdd000000),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    caption: GoogleFonts.nunito(
      color: const Color(0x8a000000),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: GoogleFonts.nunito(
      color: const Color(0xff000000),
      fontSize: 14,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    ),
    subtitle2: GoogleFonts.nunito(
      color: const Color(0xff000000),
      fontSize: 14,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.normal,
    ),
    overline: GoogleFonts.nunito(
      color: const Color(0xff000000),
      fontSize: 10,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.1,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(),
);