import 'dart:math';

import 'package:simple_weather_app/weather_data.dart';

List<WeatherData> weatherDatas = [
  WeatherData(city: "Karlsruhe", temperature: 25, weatherCondition: "sonnig"),
  WeatherData(city: "Landau", temperature: 20, weatherCondition: "regnerisch"),
  WeatherData(city: "Offenbach", temperature: 22, weatherCondition: "wolkig"),
  WeatherData(city: "Lohr", temperature: 17, weatherCondition: "heiter"),
];

class WeatherRepository {
  final WeatherData _weatherData =
      weatherDatas[Random().nextInt(weatherDatas.length)];

  WeatherData getRandomWeather() => _weatherData;
}
