// 8a4eebc575fb217667ef76bcb00cb809
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';


class WeatherRepository {
  final String apiKey;

  WeatherRepository({required this.apiKey});

  Future<weather> fetchWeather() async {
    const double latitude = 48.3584837;
    const double longitude = 10.7788686;
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      print(json);
      return weather.fromJson(json);
    } else {
      throw Exception('Failed to load weather');
    }
  }
}

