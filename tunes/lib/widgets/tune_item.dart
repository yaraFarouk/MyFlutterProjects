import 'package:flutter/material.dart';
import 'package:tunes/models/item_info.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.item});
  final ItemInfo item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          item.tunePlayer();
        },
        child: Container(
          color: item.color,
        ),
      ),
    );
  }
}
