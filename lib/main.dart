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
        backgroundColor: const Color.fromARGB(255, 92, 199, 248),
        elevation: 2,
        shadowColor: Colors.grey,
        centerTitle: true,
        title: const Text(
          "Wetter App 3000",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 24.0),
                child: Text(
                  "Willkommen zur Wetter-App!",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Colors.blue),
                ),
              ),
              Text(
                "Karlsruhe",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text("22º", style: TextStyle(fontSize: 24)),
              Text("sonnig", style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
