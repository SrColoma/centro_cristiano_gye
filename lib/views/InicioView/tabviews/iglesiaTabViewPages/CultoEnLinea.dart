import 'package:flutter/material.dart';

class CultoEnLinea extends StatelessWidget {
  final routeName = '/culto-en-linea';
  const CultoEnLinea({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 200,
        color: Colors.red,
      ),
    );
  }
}