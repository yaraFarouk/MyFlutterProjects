import 'package:flutter/material.dart';
import 'package:tunes/widgets/tune_item.dart';
import 'package:tunes/models/item_info.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<ItemInfo> tunes = const [
    ItemInfo(color: Color.fromARGB(255, 207, 78, 192), tune: 'note1.wav'),
    ItemInfo(color: Color.fromARGB(255, 171, 49, 158), tune: 'note2.wav'),
    ItemInfo(color: Color.fromARGB(255, 229, 126, 217), tune: 'note3.wav'),
    ItemInfo(color: Color.fromARGB(255, 236, 90, 226), tune: 'note4.wav'),
    ItemInfo(color: Color.fromARGB(255, 183, 72, 172), tune: 'note5.wav'),
    ItemInfo(color: Color.fromARGB(255, 238, 88, 252), tune: 'note6.wav'),
    ItemInfo(color: Color.fromARGB(255, 233, 79, 225), tune: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 235, 235),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 83, 12, 87),
        title: Text(
          'Flutter Tunes',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Column(
        children: tunes
            .map((e) => TuneItem(
                  item: e,
                ))
            .toList(),
      ),
    );
  }

  // List<Widget> getlist() {
  //   final List<Widget> ItemList = [];
  //   for (var tune in tunes) {
  //     ItemList.add(TuneItem(item: tune));
  //   }
  //   return ItemList;
  // }
}
