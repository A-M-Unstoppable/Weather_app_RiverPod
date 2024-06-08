import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/Repositery/weather_repositery.dart';
import 'package:weather_app/models/weather_model.dart';


final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  return WeatherRepository(apiKey: '8a4eebc575fb217667ef76bcb00cb809');
});

final weatherProvider = FutureProvider<weather>((ref) async {
  final repository = ref.read(weatherRepositoryProvider);
  return repository.fetchWeather();
});
