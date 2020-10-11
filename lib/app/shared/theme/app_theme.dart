import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const _lightFillColor = Color(0xFF0B1220);
  static const _darkFillColor = Colors.white;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static const _bold = FontWeight.bold;
  static const _normal = FontWeight.normal;

  static ThemeData lightThemeData = themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      //textTheme: _textTheme,
      primaryColor: const Color(0xFF030303),
      backgroundColor: colorScheme.background,
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      accentColor: colorScheme.primary,
      focusColor: focusColor,
    );
  }

  // Light Colors Scheme
  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFFF71603),
    primaryVariant: Color(0xFFF1E6FF),
    secondary: Color(0xFF2ECC71),
    secondaryVariant: Color(0xFF00CD6B),
    background: Colors.white,
    surface: Color(0xFFFAFBFB),
    onBackground: Color(0xFFE6EBEB),
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: _lightFillColor,
    onSurface: _lightFillColor,
    brightness: Brightness.light,
  );

  // Dark Colors Scheme
  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFFF71603),
    primaryVariant: Color(0xFFF1E6FF),
    secondary: Color(0xFF2ECC71),
    secondaryVariant: Color(0xFF00CD6B),
    background: Color(0xFF0B1220),
    surface: Color(0xFF111727),
    onBackground: Color(0xFF141b2d),
    error: _darkFillColor,
    onError: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: _darkFillColor,
    onSurface: _darkFillColor,
    brightness: Brightness.dark,
  );

  // static final TextTheme _textTheme = TextTheme(
  //   headline1: TextStyle(fontWeight: _bold, fontSize: 24.0),
  //   headline2: TextStyle(fontWeight: _bold, fontSize: 20.0),
  //   subtitle1: TextStyle(fontWeight: _bold, fontSize: 18.0, height: 2),
  //   subtitle2: TextStyle(fontWeight: _normal, fontSize: 18.0),
  //   button: TextStyle(fontWeight: _normal, fontSize: 14.0),
  // );
}
