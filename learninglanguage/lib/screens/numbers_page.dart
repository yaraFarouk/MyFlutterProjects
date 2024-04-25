import 'package:flutter/material.dart';
import 'package:learninglanguage/components/num_item.dart';
import 'package:learninglanguage/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Number> numbers = const [
    Number(
        sound: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jpNum: 'ichi',
        enNum: 'one'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpNum: 'Ni',
        enNum: 'two'),
    Number(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpNum: 'San',
        enNum: 'three'),
    Number(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpNum: 'Shi',
        enNum: 'four'),
    Number(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpNum: 'Go',
        enNum: 'five'),
    Number(
        sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpNum: 'Roku',
        enNum: 'six'),
    Number(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpNum: 'Sebun',
        enNum: 'seven'),
    Number(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpNum: 'hachi',
        enNum: 'eight'),
    Number(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpNum: 'Kyū',
        enNum: 'nine'),
    Number(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpNum: 'Jū',
        enNum: 'ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 239, 234),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 168, 118, 70),
          title: Text('Numbers'),
        ),
        body: ListView(
          children: getlist(numbers),
        ));
  }

  List<Widget> getlist(List<Number> numbers) {
    final List<Widget> ItemList = [];
    for (int i = 0; i < numbers.length; i++) {
      ItemList.add(NumItem(number: numbers[i]));
    }
    return ItemList;
  }
}
