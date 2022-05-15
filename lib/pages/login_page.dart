import 'package:flutter/material.dart';
import 'package:projeto01/components/login/custom_login_button_component.dart';
import 'package:projeto01/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: MediaQuery.of(context).size.height * 0.3,
            ),
            TextField(
              decoration: InputDecoration(label: Text('Login')),
              onChanged: _controller.setLogin,
            ),
            TextField(
              decoration: InputDecoration(label: Text('Senha')),
              onChanged: _controller.setPass,
              obscureText: true,
            ),
            SizedBox(
              height: 15,
            ),
            CustomLoginButtonComponent(loginController: _controller)
          ],
        ),
      ),
    );
  }
}
