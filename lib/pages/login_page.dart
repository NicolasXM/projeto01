import 'package:flutter/material.dart';
import 'package:projeto01/components/login/custom_login_button_component.dart';
import 'package:projeto01/controller/login_controller.dart';
import 'package:projeto01/widgets/custom_text_field_widget.dart';

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
            CustomTextFieldWidget(
                label: 'Login', onchanged: _controller.setLogin),
            CustomTextFieldWidget(
                label: 'Senha',
                onchanged: _controller.setPass,
                obscureText: true),
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
