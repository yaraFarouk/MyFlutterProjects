import 'package:flutter/material.dart';

class NoWeatherView extends StatelessWidget {
  const NoWeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Search for city to get weather 🔍',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 6, 68, 119),
          )),
    );
  }
}
