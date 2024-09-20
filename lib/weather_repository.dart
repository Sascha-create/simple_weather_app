import 'package:simple_weather_app/weather_data.dart';

class WeatherRepository {
  final WeatherData _weatherData = WeatherData(
      city: "Karlsruhe", temperature: 25, weatherCondition: "sonnig");

  WeatherData getWeather() => _weatherData;
}
