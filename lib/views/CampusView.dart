import 'package:centro_cristiano_gye/components/cards/CustomShortCard.dart';
import 'package:flutter/material.dart';

class CampusView extends StatelessWidget {
  const CampusView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              CustomShortCard(
                imagen: "https://picsum.photos/250?image=9",
                titulo: "Titulo 1",
                subtitulo: "Subtitulo 1",
              ),
              CustomShortCard(
                imagen: "https://picsum.photos/250?image=9",
                titulo: "Titulo 1",
                subtitulo: "Subtitulo 1",
              ),
              CustomShortCard(
                imagen: "https://picsum.photos/250?image=9",
                titulo: "Titulo 1",
                subtitulo: "Subtitulo 1",
              ),
              CustomShortCard(
                imagen: "https://picsum.photos/250?image=9",
                titulo: "Titulo 1",
                subtitulo: "Subtitulo 1",
              ),
              CustomShortCard(
                imagen: "https://picsum.photos/250?image=9",
                titulo: "Titulo 1",
                subtitulo: "Subtitulo 1",
              ),
              CustomShortCard(
                imagen: "https://picsum.photos/250?image=9",
                titulo: "Titulo 1",
                subtitulo: "Subtitulo 1",
              ),
              CustomShortCard(
                imagen: "https://picsum.photos/250?image=9",
                titulo: "Titulo 1",
                subtitulo: "Subtitulo 1",
              ),
              CustomShortCard(
                imagen: "https://picsum.photos/250?image=9",
                titulo: "Titulo 1",
                subtitulo: "Subtitulo 1",
              ),
            ]
          )
        )
      ],
    );
  }
}