import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WeatherApp(),
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.grey,
        centerTitle: true,
        title: const Text("Wetter App"),
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                "Willkommen zur Wetter-App!",
                style: TextStyle(fontSize: 24, color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
