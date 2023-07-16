import 'package:flutter/material.dart';
import 'package:login/src/constants/routes.dart';

class Login extends StatelessWidget {

  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              height: 100,
              image: AssetImage('assets/img/login.png'),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Usuario'),
              controller: userController,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Contraseña'),
              obscureText: true,
              controller: passwordController,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                validateLogin(context, userController.text, passwordController.text);
              },
              child: Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}



void validateLogin(BuildContext context, String email, String password) {
  if (email == 'jimmy.oliva@unah.hn' && password == '20172031180') {
    Navigator.pushNamed(context, MyRoutes.welcome.name);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Ocurrio un error con el usuario o contraseña')),
    );
  }
}