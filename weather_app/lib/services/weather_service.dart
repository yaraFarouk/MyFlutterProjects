import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'b1731df4aa44489ea68124650230311';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather(String cityName) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.formJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'Oops,there is an error, try later';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('Oops, there is an error, try later');
    }
  }
}
