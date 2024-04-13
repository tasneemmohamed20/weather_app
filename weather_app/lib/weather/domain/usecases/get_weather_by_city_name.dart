import 'package:weather_app/weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCityName {
  final BaseWeatherRepository repository;
  GetWeatherByCityName({required this.repository});
  excute(String cityName) {
    return repository.getWeatherByCityNamy(cityName);
  }
}
