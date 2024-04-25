import 'package:flutter/material.dart';
import 'package:toku/components/category.dart';
import 'package:toku/screens/Family_page.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

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
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Color.fromARGB(255, 228, 133, 44),
          ),
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyPage();
              }));
            },
            text: 'Family Members',
            color: Color.fromARGB(255, 199, 163, 18),
          ),
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
            text: 'Colors',
            color: Color.fromARGB(255, 218, 100, 120),
          ),
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: Color.fromARGB(255, 183, 180, 99),
          ),
        ],
      ),
    );
  }
}
