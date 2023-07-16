import 'package:flutter/material.dart';
import 'package:tarea_2_login/src/constantes/routes.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final formKey = GlobalKey<FormState>();
  final usuarioController = TextEditingController();
  final contraController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Login',
          style: TextStyle(color: Color.fromARGB(255, 253, 253, 253)),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/ing-sistemas.png'),
              ),
              Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: usuarioController,
                          decoration: const InputDecoration(
                            label: Text('Usuario'),
                          ),
                          validator: (value) {
                            if (value!.isEmpty)
                              return 'Debe ingresar su usuario';
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: contraController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            label: Text('Contraseña'),
                          ),
                          validator: (value) {
                            if (value!.isEmpty)
                              return 'Debe ingresar su password';
                            return null;
                          },
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: ElevatedButton(
                  onPressed: () {
                    final bool validity =
                        usuarioController.text == 'dmchavez@unah.hn' &&
                            contraController.text == '20192000042';
                    if (formKey.currentState!.validate() && validity) {
                      Navigator.pushNamed(context, MyRoutes.home.name);
                    } else {
                      final snackBar = SnackBar(
                        content: const Text('Datos incorrectas'),
                        action: SnackBarAction(
                          label: 'Done',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: const Text('OK'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
