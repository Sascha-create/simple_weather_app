import 'package:flutter/material.dart';
import 'package:simple_weather_app/header.dart';
import 'package:simple_weather_app/weather_data.dart';
import 'package:simple_weather_app/weather_display.dart';
import 'package:simple_weather_app/weather_repository.dart';

void main() {
  final WeatherRepository weatherRepository = WeatherRepository();
  runApp(MainApp(repository: weatherRepository));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.repository});
  final WeatherRepository repository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherApp(repository: repository),
    );
  }
}

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key, required this.repository});
  final WeatherRepository repository;

  @override
  State<WeatherApp> createState() => _WeatherDataState();
}

class _WeatherDataState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
    WeatherData actualWeatherD = widget.repository.getRandomWeather();
    final String city = actualWeatherD.city;
    final double temperature = actualWeatherD.temperature;
    final String weatherCondition = actualWeatherD.weatherCondition;

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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Header(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(),
              ),
              WeatherDisplay(
                  city: city,
                  temperature: temperature,
                  weatherCondition: weatherCondition),
              FloatingActionButton(
                onPressed: () {
                  setState(() {});
                },
                backgroundColor: Colors.blue[200],
                child: const Icon(
                  Icons.cloud_outlined,
                  color: Colors.white,
                  size: 36,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
