import 'package:centro_cristiano_gye/components/cards/CustomShortCard.dart';
import 'package:flutter/material.dart';

// "https://darrylburling.com/wp-content/uploads/2017/04/cross.png"

class CampusView extends StatelessWidget {
  const CampusView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: ExpansionTile(
            leading: Image.network("https://darrylburling.com/wp-content/uploads/2017/04/cross.png"),
            title: Text("Campus Princial"),
            childrenPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dirección: "),
                  Text("Av. Fransico de Orellana"),
                ],
              ),
              SizedBox.square(dimension: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Horarios: "),
                  Text("Lunes a Viernes 8:00 - 17:00"),
                ],
              ),
              SizedBox.square(dimension: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Contacto: "),
                  Text("099 999 9999"),
                ],
              ),
              SizedBox.square(dimension: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Cultos - Domingos: "),
                  Column(
                    children: [
                      Text("08:00 - 10:00"),
                      Text("10:00 - 12:00"),
                      Text("10:00 - 12:00"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),


        
        SliverToBoxAdapter(
          child: ExpansionTile(
            leading: Image.network("https://darrylburling.com/wp-content/uploads/2017/04/cross.png"),
            title: Text("Campus Monte Sinai"),
            childrenPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dirección: "),
                  Text("Av. Fransico de Orellana"),
                ],
              ),
              SizedBox.square(dimension: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Horarios: "),
                  Text("Lunes a Viernes 8:00 - 17:00"),
                ],
              ),
              SizedBox.square(dimension: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Contacto: "),
                  Text("099 999 9999"),
                ],
              ),
              SizedBox.square(dimension: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Cultos - Domingos: "),
                  Column(
                    children: [
                      Text("08:00 - 10:00"),
                      Text("10:00 - 12:00"),
                      Text("10:00 - 12:00"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),


        SliverToBoxAdapter(
          child: ExpansionTile(
            leading: Image.network("https://darrylburling.com/wp-content/uploads/2017/04/cross.png"),
            title: Text("Campus Ciudad de Dios"),
            childrenPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dirección: "),
                  Text("Av. Fransico de Orellana"),
                ],
              ),
              SizedBox.square(dimension: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Horarios: "),
                  Text("Lunes a Viernes 8:00 - 17:00"),
                ],
              ),
              SizedBox.square(dimension: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Contacto: "),
                  Text("099 999 9999"),
                ],
              ),
              SizedBox.square(dimension: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Cultos - Domingos: "),
                  Column(
                    children: [
                      Text("08:00 - 10:00"),
                      Text("10:00 - 12:00"),
                      Text("10:00 - 12:00"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),



        
      ],
    );
  }
}