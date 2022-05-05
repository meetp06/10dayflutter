import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: const Text(
              "Hi Flutter Buddies,\n\n    Meet is Here!",
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25,
                  letterSpacing: 4),
            ),
          ),
        ),
      ),
    );
  }
}
