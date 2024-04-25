import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/number.dart';

//Color.fromARGB(255, 228, 133, 44)
class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color.fromARGB(255, 240, 222, 207),
            child: Image.asset(item.image!),
          ),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}

// class ItemInfo extends StatelessWidget {
//   const ItemInfo({super.key, required this.item});
//   final ItemModel item;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 16),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 item.jpNum,
//                 style: TextStyle(color: Colors.white, fontSize: 18),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               Text(
//                 item.enNum,
//                 style: TextStyle(color: Colors.white, fontSize: 18),
//               )
//             ],
//           ),
//         ),
//         Spacer(flex: 1),
//         Padding(
//           padding: const EdgeInsets.only(right: 30),
//           child: IconButton(
//             onPressed: () {
//               final player = AudioPlayer();
//               player.play(
//                 AssetSource(item.sound),
//               );
//               // will immediately start playing
//             },
//             icon: Icon(
//               Icons.play_arrow,
//               color: Colors.white,
//               size: 30,
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
