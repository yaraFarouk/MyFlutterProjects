import 'package:flutter/material.dart';
import 'package:learninglanguage/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class NumItem extends StatelessWidget {
  const NumItem({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 228, 133, 44),
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color.fromARGB(255, 240, 222, 207),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpNum,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  number.enNum,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(
                  AssetSource(number.sound),
                );
                // will immediately start playing
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
