import 'package:flutter/material.dart';
//import 'package:toku/components/num_item.dart';
import 'package:toku/components/phrase_item.dart';
import 'package:toku/models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> phrases = const [
    ItemModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        jpNum: 'Kimasu ka?',
        enNum: 'are you coming?'),
    ItemModel(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jpNum: 'Kōdoku suru koto o wasurenaide kudasai',
        enNum: 'do not forget to subscribe'),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jpNum: 'Go kibun wa ikagadesu ka?',
        enNum: 'how are you feeling?'),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpNum: 'Watashi wa anime ga daisukidesu',
        enNum: 'i love anime'),
    ItemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        jpNum: 'Watashi wa Puroguramingu ga daisukidesu',
        enNum: 'i love programming'),
    ItemModel(
        sound: 'sounds/phrases/programming_is_easy.wav',
        jpNum: 'Puroguramingu wa kantandesu',
        enNum: 'programming is easy'),
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jpNum: 'Onamaehanandesuka?',
        enNum: 'what is your name?'),
    ItemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jpNum: 'Doko ni iku no?',
        enNum: 'where are you going?'),
    ItemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jpNum: 'Hai, watashi wa kite imasu',
        enNum: 'yes, i am coming'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 239, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 168, 118, 70),
        title: Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            color: Color.fromARGB(255, 208, 205, 109),
            item: phrases[index],
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
