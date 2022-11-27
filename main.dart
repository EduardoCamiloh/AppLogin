import 'package:flutter/material.dart';
import 'package:testes/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppLogin',
      home: HomeRegistration(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}
