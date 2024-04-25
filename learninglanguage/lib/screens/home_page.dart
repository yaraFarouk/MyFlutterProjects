import 'package:flutter/material.dart';
import 'package:learninglanguage/components/category.dart';
import 'package:learninglanguage/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 239, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 168, 118, 70),
        title: Text(
          'Toku',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      body: Column(
        children: [
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Color.fromARGB(255, 228, 133, 44),
          ),
          Category(
            ontap: () {},
            text: 'Family Members',
            color: Color.fromARGB(255, 220, 153, 38),
          ),
          Category(
            ontap: () {},
            text: 'Colors',
            color: Color.fromARGB(255, 247, 188, 134),
          ),
          Category(
            ontap: () {},
            text: 'Phrases',
            color: Color.fromARGB(255, 240, 169, 103),
          ),
        ],
      ),
    );
  }
}
