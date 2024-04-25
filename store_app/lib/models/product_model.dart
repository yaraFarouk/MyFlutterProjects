import 'dart:ffi';

import 'package:store_app/models/rating_model.dart';

class ProductModel {
  final int id;
  final String title;
  final Float price;
  final String descipition;
  final String category;
  final String image;
  final RatingModel rating;
  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.descipition,
      required this.category,
      required this.image,
      required this.rating});
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        descipition: jsonData['desccription'],
        category: jsonData['category'],
        image: jsonData['image'],
        rating: RatingModel.fromJson(['rating']));
  }
}
