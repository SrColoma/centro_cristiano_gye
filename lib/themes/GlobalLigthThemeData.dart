import 'package:flutter/material.dart';

ThemeData getGlobalThemeData(){
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(

      primary: Colors.blue,
      // primaryVariant: Colors.black,
      secondary: Colors.blueAccent,
      // secondaryVariant: Colors.black,
      surface: Colors.white,
      background: Colors.black12,
      // error: Colors.black,
      onPrimary: Colors.black,
      onSecondary: Colors.white,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.white,
      brightness: Brightness.light,
    ),

    iconTheme:IconThemeData(
      color: Colors.black,
    ),

    buttonTheme: ButtonThemeData(
      buttonColor: Colors.black
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.black.withOpacity(0.1),
      ),
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.black.withOpacity(0.1),
      ),
    ),

    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black, // Establece el color del texto del cuerpo en negro
      ),
      headline6: TextStyle(
        color: Colors.red, // Establece el color del texto del encabezado en rojo
      ),
    ),

  );
}