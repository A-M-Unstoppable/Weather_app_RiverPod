import 'package:equatable/equatable.dart';

class weather extends Equatable {
  final int temp;
  final String type;
  final int sunrise;
  final int sunset;
  final int temp_min;
  final int temp_max;
  final String city;
  final int feelslike;
  final int id;

  weather({
    required this.temp,
    required this.type,
    required this.sunrise,
    required this.sunset,
    required this.temp_max,
    required this.temp_min,
    required this.city,
    required this.feelslike,
    required this.id,
  });

  factory weather.fromJson(Map<String, dynamic> json) {
    return weather(
      temp: json['main']['temp'].toInt(),
      type: json['weather'][0]['main'],
      sunrise: json['sys']['sunrise'],
      sunset: json['sys']['sunset'],
      temp_min: json['main']['temp_min'].toInt(),
      temp_max: json['main']['temp_max'].toInt(),
      city: json['name'],
      feelslike: json['main']['feels_like'].toInt(),
      id: json['weather'][0]['id'].toInt(),
    );
  }

  @override
  List<Object> get props => [temp, type, sunrise, sunset, temp_min, temp_max, city, id,feelslike];

  String getImageAsset() {
    switch (id/100) {
      case 2:
        return 'assets/1.png';
      case 5:
        return 'assets/2.png';
      case 6:
        return 'assets/4.png';
      case 3:
        return 'assets/5.png';
      case 8:
        return 'assets/7.png';
      default:
        return 'assets/8.png';

    }
  }
}
