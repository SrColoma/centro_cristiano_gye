import 'package:centro_cristiano_gye/components/cards/CustomCard.dart';
import 'package:flutter/material.dart';

class AprendeTabView extends StatelessWidget {
  const AprendeTabView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagenes = [
      // "https://www.ccgye.org/wp-content/uploads/2016/05/logo-cc.png",
      "http://www.ccgye.org/wp-content/uploads/2016/05/logo-cc-300x177.png",
      "https://cdn.pixabay.com/photo/2017/08/05/14/21/love-2583943_1280.jpg",
      "https://globalgear.org/cdn/shop/files/GLOBAL_LOGO_as_of_112105_Clr_0271202a-8a41-4e53-b247-d84b8a7c496a.png?height=628&pad_color=ffffff&v=1664201027&width=1200",
      "https://aulavirtualec.net/wp-content/uploads/Instituto-Superior-Tecnologico-Liceo-Cristiano-2.webp",
      "https://aulavirtualec.net/wp-content/uploads/Instituto-Superior-Tecnologico-Liceo-Cristiano-2.webp"
    ];
    return ListView(
      children:[
        CustomCard(
          imagen: imagenes[0],
          titulo: "Crecimiento y cambio",
          subtitulo: "",
          onTap: ()=>{},
        
        ),
        CustomCard(
          imagen: imagenes[1],
          titulo: "Cursos en pareja",
          subtitulo: "",
          onTap: ()=>{},
        
        ),
        CustomCard(
          imagen: imagenes[2],
          titulo: "Global University",
          subtitulo: "",
          onTap: ()=>{},
        
        ),
        
        CustomCard(
          imagen: imagenes[3],
          titulo: "ITSLC",
          subtitulo: "",
          onTap: ()=>{},
        
        ),

        CustomCard(
          imagen: imagenes[4],
          titulo: "Unidad Educativa LCG",
          subtitulo: "",
          onTap: ()=>{},
        
        ),

      ],
    );
  }
}