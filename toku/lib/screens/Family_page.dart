import 'package:flutter/material.dart';
import 'package:toku/components/num_item.dart';
import 'package:toku/models/number.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        sound: 'sounds/family/father.wav',
        image: 'assets/images/family/family_father.png',
        jpNum: 'Chichioya',
        enNum: 'father'),
    ItemModel(
        sound: 'sounds/family/mother.wav',
        image: 'assets/images/family/family_mother.png',
        jpNum: 'Hahaoya',
        enNum: 'mother'),
    ItemModel(
        sound: 'sounds/family/daughter.wav',
        image: 'assets/images/family/family_daughter.png',
        jpNum: 'Musume',
        enNum: 'daughter'),
    ItemModel(
        sound: 'sounds/family/son.wav',
        image: 'assets/images/family/family_son.png',
        jpNum: 'Musuko',
        enNum: 'son'),
    ItemModel(
        sound: 'sounds/family/grandfather.wav',
        image: 'assets/images/family/family_grandfather.png',
        jpNum: 'Ojīsan',
        enNum: 'grandfather'),
    ItemModel(
        sound: 'sounds/family/grandmother.wav',
        image: 'assets/images/family/family_grandmother.png',
        jpNum: 'Sobo',
        enNum: 'grandmother'),
    ItemModel(
        sound: 'sounds/family/olderbother.wav',
        image: 'assets/images/family/family_older_brother.png',
        jpNum: 'Nīsan',
        enNum: 'older brother'),
    ItemModel(
        sound: 'sounds/family/oldersister.wav',
        image: 'assets/images/family/family_older_sister.png',
        jpNum: 'Ane',
        enNum: 'older sister'),
    ItemModel(
        sound: 'sounds/family/youngerbrohter.wav',
        image: 'assets/images/family/family_younger_brother.png',
        jpNum: 'Otōto',
        enNum: 'younger brother'),
    ItemModel(
        sound: 'sounds/family/youngersister.wav',
        image: 'assets/images/family/family_younger_sister.png',
        jpNum: 'Imōto',
        enNum: 'younger sister'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 239, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 168, 118, 70),
        title: Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            color: Color.fromARGB(255, 199, 163, 18),
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
