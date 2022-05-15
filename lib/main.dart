import 'package:flutter/material.dart';
import 'package:projeto01/pages/home_page.dart';
import 'package:projeto01/pages/login_page.dart';
import 'package:projeto01/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
//Novo projeto
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) => LoginPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
