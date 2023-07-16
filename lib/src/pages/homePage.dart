import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(color: Color.fromARGB(255, 55, 165, 209)),
        ),
      ),
      body: const Center(
        child: Text(
          'Bienvenido a la pagina principal',
          style: TextStyle(
            fontSize: 48,
            color: Color.fromARGB(255, 112, 199, 112),
          ),
        ),
      ),
    );
  }
}
