import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  final List<String> nomes;
  bool bota;
  ListPage({Key? key, required this.nomes, required this.bota})
      : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Aloca"),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView(
        children: [
          for (String nome in widget.nomes)
            ListTile(
              title: Text(nome),
              subtitle: Text(widget.bota.toString()),
              onTap: () {},
            )
        ],
      ),
    );
  }
}
