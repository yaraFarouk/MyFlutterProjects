//import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.article});
  final ArticleModel article;
  Image loadImage(String url) {
    try {
      return Image.network(
        url,
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
      );
    } catch (e) {
      // Display a fallback image.
      return Image.network(
        'https://i.pinimg.com/originals/86/8b/22/868b2275b72c349a5ab35ed97672bcbb.jpg',
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: article.image != null
              ? loadImage(article.image!)
              : loadImage(
                  'https://i.pinimg.com/originals/86/8b/22/868b2275b72c349a5ab35ed97672bcbb.jpg'),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          article.title,
          maxLines: 2,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          article.subtitle ?? '',
          maxLines: 2,
          style: const TextStyle(
            color: Color.fromARGB(255, 149, 148, 148),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}



// article.image != null
//                 ? Image.network(
//                     article.image!,
//                     height: 200,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   )
//                 : Image.network(
//                     'https://i.pinimg.com/originals/86/8b/22/868b2275b72c349a5ab35ed97672bcbb.jpg',
//                     height: 200,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   ),





// article.image != null
//               ? Image.network(
//                   article.image!,
//                   height: 200,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 )
//               : Image.network(
//                   'https://i.pinimg.com/originals/86/8b/22/868b2275b72c349a5ab35ed97672bcbb.jpg',
//                   height: 200,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),