import 'package:centro_cristiano_gye/components/CustomCard.dart';
import 'package:flutter/material.dart';

class IglesiaTabView extends StatelessWidget {
  const IglesiaTabView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagenes = [
      "https://cdn.pixabay.com/photo/2021/11/14/18/36/telework-6795505_1280.jpg",
      "https://cdn.pixabay.com/photo/2014/09/13/21/40/newspapers-444447_1280.jpg",
      "https://cdn.pixabay.com/photo/2020/07/27/02/30/hands-5441201_1280.jpg",
      "https://cdn.pixabay.com/photo/2017/03/02/05/14/bible-2110439_1280.jpg",
      "https://darrylburling.com/wp-content/uploads/2017/04/cross.png",
      "https://www.signupgenius.com/cms/socialMediaImages/get-to-know-you-questions-small-groups-article-1200x800.jpg",
    ];
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          CustomCard(
            imagen: imagenes[0],
            titulo: "Culto en linea",
            subtitulo: "",
          
          ),
          CustomCard(
            imagen: imagenes[1],
            titulo: "Noticias",
            subtitulo: "",
          
          ),
          CustomCard(
            imagen: imagenes[2],
            titulo: "Oracion",
            subtitulo: "",
          
          ),
          
          CustomCard(
            imagen: imagenes[3],
            titulo: "Devocional",
            subtitulo: "",
          
          ),

          CustomCard(
            imagen: imagenes[4],
            titulo: "Crecimiento y cambio",
            subtitulo: "",
          
          ),

          CustomCard(
            imagen: imagenes[5],
            titulo: "Grupos pequeños",
            subtitulo: "",
          
          ),
        ],
      ),
    );
  }
}