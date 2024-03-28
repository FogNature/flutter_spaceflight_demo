import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spaceflight/data/response/articles_response.dart';
import 'package:spaceflight/domain/i_articles_repository.dart';
import 'package:spaceflight/domain/models/article.dart';

class ArticlesHttpRepository implements IArticlesRepository {
  @override
  Future<List<Article>> fetchArticles({required int page}) async {
    final url = Uri.parse('https://api.spaceflightnewsapi.net/v4/articles/');
    try {
      final response = await http.get(url);
      final json = jsonDecode(response.body);
      final articles = ArticlesResponse.fromJson(json)
          .results
          .map<Article>(
            (e) => e.toDomain(),
          )
          .toList();
      return articles;
    } catch (_) {
      rethrow;
    }
  }
}
