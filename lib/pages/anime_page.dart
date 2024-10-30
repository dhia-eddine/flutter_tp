import 'package:flutter/material.dart';

class AnimePage extends StatelessWidget {
  const AnimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anime"),
      ),
      body: Center(
        child: Text(
          "Page d'anime",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
