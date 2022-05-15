import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
              decoration: InputDecoration(
                label: Text('Login')),
              onChanged: _controller.setLogin,
            ),
  }
}
