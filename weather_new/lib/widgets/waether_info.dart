import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_new/cubits/get_waether_cubit/get_weather_cubit.dart';
import 'package:weather_new/models/weather_model.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Center(
      child: Column(
        children: [
          Spacer(flex: 1),
          Text(
            weatherModel.cityName,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          ),
          Text(
            'LastUpdate: ${weatherModel.lastUpdate.hour}:${weatherModel.lastUpdate.minute}',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Spacer(
                flex: 1,
              ),
              weatherModel.image.contains('https')
                  ? Image.network(weatherModel.image)
                  : Image.network('https:${weatherModel.image}'),
              SizedBox(
                width: 50,
              ),
              Text(
                weatherModel.temp.toString(),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  Text('maxTemp: ${weatherModel.maxTemp.round()}'),
                  Text('minTemp: ${weatherModel.minTemp.round()}')
                ],
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            weatherModel.condition,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
