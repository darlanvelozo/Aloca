import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: largura * 0.05,
                  right: largura * 0.05,
                  top: altura * 0.05),
              child: TextField(
                controller: nomeController,
                decoration: const InputDecoration(
                  labelText: "nome",
                  hintText: "ex: Maria de Sousa",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: largura * 0.05,
                  right: largura * 0.05,
                  top: altura * 0.05,
                  bottom: altura * 0.05),
              child: TextField(
                controller: numberController,
                decoration: const InputDecoration(
                  labelText: "Numero",
                  hintText: "(DDD) 9 9999-8888",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            ElevatedButton(onPressed: readData, child: const Text("Salvar"))
          ],
        ),
      ],
    );
  }

  void readData() {
    String nome = nomeController.text;
    String number = numberController.text;
    print(nome);
    print(number);
  }
}
