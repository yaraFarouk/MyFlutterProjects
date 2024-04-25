import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_new/cubits/get_waether_cubit/get_weather_states.dart';
import 'package:weather_new/models/weather_model.dart';
import 'package:weather_new/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(InitialState());
  WeatherModel? weatherModel;
  getWeather(String cityname) async {
    try {
      weatherModel = await WeatherService(Dio()).getCurrentWeather(cityname);
      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFailureState(errMessage: e.toString()));
    }
  }
}
