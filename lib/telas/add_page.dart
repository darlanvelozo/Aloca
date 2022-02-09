import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final isSelected = <bool>[true, false];
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
                  bottom: altura * 0.02),
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
            Row(children: [
              const Expanded(
                child: Text(
                  "Bota Ortopedica",
                  textAlign: TextAlign.end,
                ),
              ),
              SizedBox(
                width: largura / 50,
              ),
              ToggleButtons(
                isSelected: isSelected,
                onPressed: (index) {
                  // Respond to button selection
                  setState(() {
                    {
                      for (int buttonIndex = 0;
                          buttonIndex < isSelected.length;
                          buttonIndex++) {
                        if (buttonIndex == index) {
                          isSelected[buttonIndex] = true;
                        } else {
                          isSelected[buttonIndex] = false;
                        }
                      }
                    }
                  });
                },
                children: const [
                  Icon(Icons.arrow_left),
                  Icon(Icons.arrow_right),
                ],
              ),
              SizedBox(
                width: largura / 50,
              ),
              const Expanded(
                child: Text("Muletas"),
              ),
            ]),
            Padding(
              padding: EdgeInsets.only(
                  left: largura * 0.39,
                  right: largura * 0.39,
                  top: altura * 0.02),
              child: TextField(
                controller: numberController,
                decoration: const InputDecoration(
                  labelText: "Dias",
                  hintText: "15 Dias",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              onPressed: readData,
              child: const Text("Salvar"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent.shade200),
            )
          ],
        ),
      ],
    );
  }

  void readData() {
    String nome = nomeController.text;
    String number = numberController.text;
    nomeController.clear();
    numberController.clear();
  }
}
