import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Master App",
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: const Text(
            "Hi Flutter  Buddies  \n\n    Meet is Here!",
            // ignore: prefer_const_constructors
            style: TextStyle(
                color: Colors.deepPurple, fontSize: 25, letterSpacing: 4),
          ),
        ),
      ),
      drawer: const  Drawer(),
    );
  }
}
