import 'package:aloca/telas/home_page.dart';
import 'package:flutter/material.dart';
import 'package:aloca/aluguel_class/dados_necessarios.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aloca',
      home: HomePage(),
    );
  }
}
