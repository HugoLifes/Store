import 'package:flutter/material.dart';
import 'package:coivd_app2/src/app.dart';
import 'colors.dart';
//import 'src/screens/Login.dart';

// Constante final, ThemeData es el color del contexto que se usara para la app completa
final ThemeData _kShrineTheme = _buildShrineTheme();
void main() => runApp(MaterialApp(
      theme: _kShrineTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

//Colores prederterminados
ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kShrineBrown900,
    primaryColor: kShrinePink100,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kShrinePink100,
      colorScheme: base.colorScheme.copyWith(
        secondary: kShrineBrown900,
      ),
    ),
    buttonBarTheme: base.buttonBarTheme.copyWith(
      buttonTextTheme: ButtonTextTheme.accent,
    ),
    scaffoldBackgroundColor: kShrineBackgroundWhite,
    cardColor: kShrineBackgroundWhite,
    textSelectionColor: kShrinePink100,
    errorColor: kShrineErrorRed,
    // TODO: Add the text themes (103)
    // TODO: Add the icon themes (103)
    // TODO: Decorate the inputs (103)
  );
}
