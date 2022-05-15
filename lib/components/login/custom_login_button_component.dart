import 'package:flutter/material.dart';
import 'package:projeto01/controller/login_controller.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtonComponent({Key? key, required this.loginController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: loginController.inLoader,
        builder: (_, inLoader, __) => inLoader
            ? CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () {
                  loginController.auth().then((result) {
                    if (result) {
                      Navigator.of(context).pushNamed('/home');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text('Erro'),
                        duration: const Duration(seconds: 3),
                        action: SnackBarAction(
                          label: 'Falha ao realizar o login',
                          onPressed: () {},
                        ),
                      ));
                    }
                  });
                },
                child: Text('Login')));
  }
}
