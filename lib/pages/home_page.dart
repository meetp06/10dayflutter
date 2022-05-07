import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Master App",
        ),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: const Text(
            "Hi Flutter Buddies ",
            // ignore: prefer_const_constructors
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
