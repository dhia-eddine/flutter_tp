import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({Key? key}) : super(key: key);

  @override
  _StatefulPageState createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  int compteur = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text("Valeur Compteur: $compteur",
            style: const TextStyle(fontSize: 24)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(width: 10), // Add spacing between the buttons
          FloatingActionButton(
            onPressed: () {
              setState(() {
                compteur++;
              });
            },
            child: const Icon(Icons.add),
            tooltip: 'Increase',
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                compteur--;
              });
            },
            child: const Icon(Icons.remove),
            tooltip: 'Decrease',
          ),
        ],
      ),
    );
  }
}
