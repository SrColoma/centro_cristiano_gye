import 'package:centro_cristiano_gye/views/CampusView.dart';
import 'package:centro_cristiano_gye/views/DonarView.dart';
import 'package:centro_cristiano_gye/views/InicioView/InicioView.dart';
import 'package:centro_cristiano_gye/views/MensajesView.dart';
import 'package:centro_cristiano_gye/views/MusicaView.dart';
import 'package:flutter/material.dart';

class MainNavigationIndexProvider with ChangeNotifier {
  int _current = 0;

  int get current => _current;

  set current(int newIndex) {
    _current = newIndex;
    notifyListeners();
  }

  List<Widget> _pages = [
    InicioView(),
    MensajesView(),
    DonarView(),
    MusicaView(),
    CampusView(),
  ];

  List<Widget> get pages => _pages;

  set pages(List<Widget> newPages) {
    _pages = newPages;
    notifyListeners();
  }


}