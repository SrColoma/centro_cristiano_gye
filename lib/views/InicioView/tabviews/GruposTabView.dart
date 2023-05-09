import 'package:centro_cristiano_gye/components/CustomCard.dart';
import 'package:flutter/material.dart';

class GruposTabView extends StatelessWidget {
  const GruposTabView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagenes = [
      // "https://www.ccgye.org/wp-content/uploads/2016/05/logo-cc.png",
      "https://cdn.pixabay.com/photo/2018/07/31/14/09/young-people-3575167_1280.jpg",
      "https://cdn.pixabay.com/photo/2019/03/12/12/47/people-4050698_1280.jpg",
      "https://cdn.pixabay.com/photo/2019/12/04/15/38/happy-4672962_1280.jpg",
      "https://cdn.pixabay.com/photo/2015/01/12/17/18/children-597471_1280.jpg",
      "https://www.signupgenius.com/cms/socialMediaImages/get-to-know-you-questions-small-groups-article-1200x800.jpg"
    ];
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          CustomCard(
            imagen: imagenes[0],
            titulo: "Tierra prometida",
            subtitulo: "",
          
          ),
          CustomCard(
            imagen: imagenes[1],
            titulo: "Piroforia",
            subtitulo: "",
          
          ),
          CustomCard(
            imagen: imagenes[2],
            titulo: "Mosaico",
            subtitulo: "",
          
          ),
          
          CustomCard(
            imagen: imagenes[3],
            titulo: "Fusionados",
            subtitulo: "",
          
          ),

          CustomCard(
            imagen: imagenes[4],
            titulo: "Grupos pequeños",
            subtitulo: "",
          
          ),

        ],
      ),
    );
  }
}