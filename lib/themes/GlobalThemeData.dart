import 'package:flutter/material.dart';

ThemeData getGlobalThemeData(){
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    useMaterial3: true,
    cardColor:Colors.black,

    colorScheme: ColorScheme.dark(
      primary: Colors.black,
      // primaryVariant: Colors.black,
      secondary: Colors.black,
      // secondaryVariant: Colors.black,
      surface: Colors.black,
      background: Colors.black,
      // error: Colors.black,
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      onSurface: Colors.white,
      onBackground: Colors.white38,
      onError: Colors.black,
      brightness: Brightness.dark,
    ),

    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.grey[900],

    ),

    tabBarTheme: TabBarTheme(
      indicatorColor: Colors.white,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white38,
      dividerColor: Colors.white24.withOpacity(0),
    ),

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        
      )
    ),

    iconTheme:IconThemeData(
      color: Colors.white,
    ),

    badgeTheme: BadgeThemeData(
      backgroundColor: Colors.black,

    ),

    appBarTheme: AppBarTheme(
      // color: Colors.black,
      elevation: 0.0,
      // backgroundColor: Colors.black,

    ),

    buttonTheme: ButtonThemeData(
      buttonColor: Colors.black
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white.withOpacity(0.1),
      ),
    ),

    cardTheme:CardTheme(
      color:Colors.black,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        // side: BorderSide(
        //   color: Colors.white.withOpacity(0.1),
        //   width: 1,
        // ),
      ),


      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(20),
      // ),
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white.withOpacity(0.1),
      ),
    ),
    
    menuButtonTheme: MenuButtonThemeData(
      style: ButtonStyle(
        // overlayColor: MaterialStateProperty.all(Colors.white),
        foregroundColor: MaterialStateProperty.all(Colors.black),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
    ),
    
    menuTheme: MenuThemeData(
      style: MenuStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white.withOpacity(0.1),
      // filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.1),
          width: 1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.1),
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.1),
          width: 1,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.1),
          width: 1,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.1),
          width: 1,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.1),
          width: 1,
        ),
      ),
      labelStyle: TextStyle(
        color: Colors.white.withOpacity(0.5),
      ),
      hintStyle: TextStyle(
        color: Colors.white.withOpacity(0.5),
      ),
      prefixStyle: TextStyle(
        color: Colors.white.withOpacity(0.5),
      ),
      suffixStyle: TextStyle(
        color: Colors.white.withOpacity(0.5),
      ),
      counterStyle: TextStyle(
        color: Colors.white.withOpacity(0.5),
      ),
      errorStyle: TextStyle(
        color: Colors.white.withOpacity(0.5),
      ),
      helperStyle: TextStyle(
        color: Colors.white.withOpacity(0.5),
      ),
    ),

    navigationBarTheme:NavigationBarThemeData(
      iconTheme: MaterialStateProperty.all<IconThemeData>(
        IconThemeData(
          color: Colors.white,
        ),
      ),
      indicatorShape: CircleBorder(),
      indicatorColor: Colors.white.withOpacity(0.0),
      labelTextStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
      // backgroundColor: Colors.black,
      height: 60,
      elevation: 0,
    ),
  );
}