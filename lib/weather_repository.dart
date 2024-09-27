import 'dart:math';

import 'package:simple_weather_app/weather_data.dart';


class WeatherRepository {
  final List<WeatherData> _weatherDatas =  [
  WeatherData(city: "Karlsruhe", temperature: 25, weatherCondition: "sonnig"),
  WeatherData(city: "Landau", temperature: 20, weatherCondition: "regnerisch"),
  WeatherData(city: "Offenbach", temperature: 22, weatherCondition: "wolkig"),
  WeatherData(city: "Lohr", temperature: 17, weatherCondition: "heiter"),
];

  

  WeatherData getRandomWeather() => _weatherDatas[Random().nextInt(_weatherDatas.length)];
}
