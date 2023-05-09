import 'package:centro_cristiano_gye/components/CustomAppBar.dart';
import 'package:centro_cristiano_gye/components/CustomNavigationBar.dart';
import 'package:centro_cristiano_gye/providers/MainNavigationIndexProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  static const routeName = '/main';
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mainnavigationindexprovider = Provider.of<MainNavigationIndexProvider>(context);
    return Scaffold(
      appBar: CustomAppBar(),
      body: mainnavigationindexprovider.pages[mainnavigationindexprovider.current],
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}