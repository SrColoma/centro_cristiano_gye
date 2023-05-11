import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String subtitulo;
  final VoidCallback? onTap;

  CustomCard({
    Key? key,
    required this.imagen,
    required this.titulo,
    required this.subtitulo,
    required this.onTap,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderRadius _borderRadius = BorderRadius.circular(20);
    return Card(
      child: InkWell(
        borderRadius: _borderRadius,
        child: Column(
          children: [
            // network image
            ClipRRect(
              borderRadius: _borderRadius,
              child: Image.network(
                
                height: 160,
                width: double.infinity,
                imagen,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(titulo),
              subtitle: Text(subtitulo),
            ),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}