import 'package:centro_cristiano_gye/views/CampusView.dart';
import 'package:centro_cristiano_gye/views/DonarView.dart';
import 'package:centro_cristiano_gye/views/InicioView/InicioView.dart';
import 'package:centro_cristiano_gye/views/InicioView/tabviews/AprendeTabView.dart';
import 'package:centro_cristiano_gye/views/InicioView/tabviews/CursosTabView.dart';
import 'package:centro_cristiano_gye/views/InicioView/tabviews/DonarTabView.dart';
import 'package:centro_cristiano_gye/views/InicioView/tabviews/GruposTabView.dart';
import 'package:centro_cristiano_gye/views/InicioView/tabviews/IglesiaTabView.dart';
import 'package:centro_cristiano_gye/views/MensajesView.dart';
import 'package:centro_cristiano_gye/views/MusicaView.dart';
import 'package:flutter/material.dart';

class InicioNavigationIndexProvider with ChangeNotifier {
  int _current = 0;

  int get current => _current;

  set current(int newIndex) {
    _current = newIndex;
    notifyListeners();
  }

  List<Widget> _pages = [
    IglesiaTabView(),
    AprendeTabView(),
    GruposTabView(),
    DonarTabView(),
  ];

  List<Widget> get pages => _pages;

  set pages(List<Widget> newPages) {
    _pages = newPages;
    notifyListeners();
  }


}