import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: largura * 0.05, right: largura * 0.05, top: altura * 0.05),
          child: const TextField(
            decoration: InputDecoration(
              labelText: "nome",
              hintText: "ex: Maria de Sousa",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: largura * 0.05, right: largura * 0.05, top: altura * 0.05),
          child: const TextField(
            decoration: InputDecoration(
              labelText: "Numero",
              hintText: "(DDD) 9 9999-8888",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.phone,
          ),
        )
      ],
    );
  }
}
