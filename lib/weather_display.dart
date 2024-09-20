import 'package:flutter/material.dart';

class WeatherDisplay extends StatelessWidget {
  const WeatherDisplay({
    super.key,
    required this.city,
    required this.temperature,
    required this.weatherCondition,
  });

  final String city;
  final double temperature;
  final String weatherCondition;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: Colors.black45),
        color: Colors.grey[300],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            city,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Text("$temperatureº", style: const TextStyle(fontSize: 24)),
          Text(weatherCondition,
              style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
