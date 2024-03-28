import 'package:flutter/material.dart';
import 'package:spaceflight/domain/models/article.dart';

class ArticleItem extends StatelessWidget {
  final Article article;

  const ArticleItem({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Image.network(
            article.imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(article.title),
                SizedBox(height: 8),
                Text(article.publishedAt.toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
