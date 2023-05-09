import 'package:centro_cristiano_gye/pages/LoginPage.dart';
import 'package:centro_cristiano_gye/pages/MainPage.dart';
import 'package:centro_cristiano_gye/providers/MainNavigationIndexProvider.dart';
import 'package:centro_cristiano_gye/themes/GlobalThemeData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/InicioView/providers/InicioNavigationIndexProvider.dart';

// void main() => runApp(const MyApp());
void main() async{
  // await dotenv.load(fileName: ".env");
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => MainNavigationIndexProvider()),
          ChangeNotifierProvider(create: (_) => InicioNavigationIndexProvider()),
        ],
        child: const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.light(),
      // una copia del tema obscuro pero totalmente negro y blanco
      theme: getGlobalThemeData(),
      title: 'Iglecia Centro Cristiano GYE',
      initialRoute: MainPage.routeName,
      routes: {
        MainPage.routeName          : (context) => MainPage(),
        LoginPage.routeName          : (context) => LoginPage(),
      },
    );
  }
}



