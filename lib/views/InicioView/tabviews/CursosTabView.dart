import 'package:centro_cristiano_gye/components/cards/CustomCard.dart';
import 'package:centro_cristiano_gye/components/cards/CustomImageCard.dart';
import 'package:flutter/material.dart';

class CursosTabView extends StatelessWidget {
  const CursosTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          CustomImageCard(),
          CustomImageCard(),
          CustomImageCard(),
          CustomImageCard(),
          CustomImageCard(),
          CustomImageCard(),
        ],
      ),
    );
  }
}