import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Login Page"),
        elevation: 0.0, // Elimina la elevación
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: FilledButton(
          child: Text("Login"),
          onPressed: () {
            
          },
        ),
      ),
    );
  }
}