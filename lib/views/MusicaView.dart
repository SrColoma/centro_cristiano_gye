import 'package:centro_cristiano_gye/components/CustomMusicCard.dart';
import 'package:centro_cristiano_gye/components/CustomShortCard.dart';
import 'package:flutter/material.dart';

class MusicaView extends StatelessWidget {
  const MusicaView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.5,
          ),
          delegate: SliverChildListDelegate(
            [
              CustomMusicCard(),
              CustomMusicCard(),
              CustomMusicCard(),
              CustomMusicCard(),
              CustomMusicCard(),
              CustomMusicCard(),
              CustomMusicCard(),
              CustomMusicCard(),
              CustomMusicCard(),
            ]
          )
        )
      ],
    );
  }
}