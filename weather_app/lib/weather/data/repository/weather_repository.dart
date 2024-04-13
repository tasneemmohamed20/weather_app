import 'package:weather_app/weather/data/database/remote_data_source.dart';
import 'package:weather_app/weather/domain/entities/weather.dart';
import 'package:weather_app/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository extends BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository( this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityNamy(String cityName) async{
  return ( await baseRemoteDataSource.getWeatherByCityName(cityName))!;
  }
}
