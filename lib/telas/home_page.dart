import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Aloca"),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.grey.shade300,
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
