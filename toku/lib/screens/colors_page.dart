import 'package:flutter/material.dart';
import 'package:toku/components/num_item.dart';
import 'package:toku/models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpNum: 'Burakku',
        enNum: 'black'),
    ItemModel(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpNum: 'Chairo',
        enNum: 'brown'),
    ItemModel(
        sound: 'sounds/colors/dustyyellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpNum: 'Hokori ppoi kiiro',
        enNum: 'dusty yellow'),
    ItemModel(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpNum: 'Gurē',
        enNum: 'gray'),
    ItemModel(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpNum: 'Midoriiro',
        enNum: 'green'),
    ItemModel(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpNum: 'Aka',
        enNum: 'red'),
    ItemModel(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpNum: 'Shiro',
        enNum: 'white'),
    ItemModel(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpNum: 'Kiiro',
        enNum: 'yellow'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 232, 221),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 168, 118, 70),
        title: Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            color: Color.fromARGB(255, 218, 100, 120),
            item: numbers[index],
          );
        },
      ),
    );
  }

  // List<Widget> getlist(List<Number> numbers) {
  //   final List<Widget> ItemList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     ItemList.add(NumItem(number: numbers[i]));
  //   }
  //   return ItemList;
  // }
}
