import 'package:aloca/telas/home_page.dart';
import 'package:aloca/telas/info_page.dart';
import 'package:flutter/material.dart';

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
      home: InfoPage(),
    );
  }
}
