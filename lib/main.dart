import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: CupertinoScrollbar(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: 200,
              itemBuilder: (context, index) {
                return Image.asset(
                  'assets/${index + 2}.jpg',
                  fit: BoxFit.cover,
                );
              }),
        ),
      ),
    );
  }
}
