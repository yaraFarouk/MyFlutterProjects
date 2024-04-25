import 'package:flutter/material.dart';
import 'package:tunes/views/tune_view.dart';

void main() {
  runApp(const TunesPlayer());
}

class TunesPlayer extends StatelessWidget {
  const TunesPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TuneView(),
    );
  }
}
