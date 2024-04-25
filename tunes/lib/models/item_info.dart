//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ItemInfo {
  final Color color;
  final String tune;
  const ItemInfo({required this.color, required this.tune});

  tunePlayer() {
    final player = AudioPlayer();
    player.play(AssetSource(tune));
  }
}
