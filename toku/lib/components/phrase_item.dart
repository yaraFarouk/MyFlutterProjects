import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/number.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(color: color, height: 100, child: ItemInfo(item: item));
  }
}
