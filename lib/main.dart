import 'package:flutter/material.dart';
import 'package:simple_weather_app/weather_data.dart';

void main() {
  runApp(const MainApp());
// WeatherData actualWeather = WeatherData(
//       city: "Karlsruhe", temperature: 22, weatherCondition: "sonnig");

  
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      home: WeatherApp(actualWeather: WeatherData(city: "Karlsruhe", 
      temperature: 22, weatherCondition: "sonnig"))
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key, required this.actualWeather});
  final WeatherData actualWeather;

  
  @override
  Widget build(BuildContext context) {
    final String city = actualWeather.city;
    final double temperature = actualWeather.temperature;
    final String weatherCondition = actualWeather.weatherCondition;

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
      body:  SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
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
                city,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text("$temperatureº", style: TextStyle(fontSize: 24)),
              Text(weatherCondition, style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
