import 'package:centro_cristiano_gye/components/cards/CustomImageCard.dart';
import 'package:centro_cristiano_gye/components/cards/CustomShortCard.dart';
import 'package:centro_cristiano_gye/views/InicioView/tabviews/DonarTabView.dart';
import 'package:flutter/material.dart';

class DonarView extends StatelessWidget {
  const DonarView({super.key});

  @override
  Widget build(BuildContext context) {
    return DonarTabView();
    // return CustomScrollView(
    //   slivers: [
    //     DonarTabView(),
    //   ],
    // );
  }
}