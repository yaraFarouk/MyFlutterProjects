import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });
  final List<Categorymodel> categories = const [
    Categorymodel(
        image: 'assets/business.avif',
        name: 'Business',
        categoryName: 'business'),
    Categorymodel(
        image: 'assets/entertaiment.avif',
        name: 'Entertaiment',
        categoryName: 'entertainment'),
    Categorymodel(
        image: 'assets/health.avif', name: 'Health', categoryName: 'Health'),
    Categorymodel(
        image: 'assets/science.avif', name: 'Science', categoryName: 'science'),
    Categorymodel(
        image: 'assets/sports.avif', name: 'Sports', categoryName: 'sports'),
    Categorymodel(
        image: 'assets/technology.jpeg',
        name: 'Technology',
        categoryName: 'technology'),
    Categorymodel(
        image: 'assets/general.avif', name: 'General', categoryName: 'general'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
