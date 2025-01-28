import 'package:flutter/material.dart';
import 'package:spotlight/spotlight.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spot Light Effect',
      home: Scaffold(
        body: SpotlightScreen(
          child: Image.network(
              "https://th.bing.com/th/id/OIG4.7h3EEAkofdcgjDEjeOyg",
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
