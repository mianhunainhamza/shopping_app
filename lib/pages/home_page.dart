import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var name = "Honey";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Store",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
        child: Text("Welcome to $name Store"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
