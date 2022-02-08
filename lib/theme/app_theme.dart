import 'package:flutter/material.dart';

class AppTheme {
  // Definir el color primario
  static Color primary = Colors.teal;
  static Color? dark_primary = Colors.grey[900];

  // Crear una copia del tema light y sobre-escribir el estilo necesario
  // copyWith hace una copia del tema seleccionado para proceder a sobre-escribir el estilo que necesitamos
  static ThemeData lightTheme = ThemeData.light().copyWith(
      // El color primario (hay ciertos Widgets que usan este color)
      primaryColor: primary,
      // AppBar Theme
      appBarTheme: AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      // Text Buttons Theme
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

      // Definir un tema para los FloatingActionButton
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5.0),

      // Definir un tema para los ElevatedBuuton
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: primary,
              elevation: 1.0,
              // StadiumBorder aplica bordes redondeados
              shape: const StadiumBorder())));

  // Definir un esquema de color para temas oscuros
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    // El color primario (hay ciertos Widgets que usan este color)
    primaryColor: dark_primary,
    // AppBar Theme
    appBarTheme: AppBarTheme(
      color: dark_primary,
      elevation: 0,
    ),

    // Color del Scaffold
    scaffoldBackgroundColor: Colors.black,
  );
}
