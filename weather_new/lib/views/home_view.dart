import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_new/cubits/get_waether_cubit/get_weather_cubit.dart';
import 'package:weather_new/cubits/get_waether_cubit/get_weather_states.dart';
import 'package:weather_new/views/search_view.dart';
import 'package:weather_new/widgets/no_weather.dart';
import 'package:weather_new/widgets/waether_info.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Weather',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'App',
              style: TextStyle(
                  color: const Color.fromARGB(255, 6, 68, 119),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SearchView();
              }));
            },
            icon: Icon(
              Icons.search,
              size: 28,
            ),
          )
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is InitialState) {
            return NoWeatherView();
          } else if (state is WeatherLoadedState) {
            return WeatherView();
          } else {
            return Text('Oops there is an error, try later');
          }
        },
      ),
    );
  }
}
