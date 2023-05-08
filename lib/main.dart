import 'package:flutter/material.dart';
import 'package:vida_leve/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      final ThemeData telaPrincipal = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: telaPrincipal.copyWith(
        colorScheme: telaPrincipal.colorScheme.copyWith(
          primary: const Color.fromRGBO(0, 168, 150, 100),
          secondary: const Color.fromRGBO(2, 128, 144, 100)
        )
      ),
      home: const LoginPage(),
    );
  }
}
