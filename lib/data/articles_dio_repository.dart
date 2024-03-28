import 'package:dio/dio.dart';
import 'package:spaceflight/data/response/articles_response.dart';
import 'package:spaceflight/domain/i_articles_repository.dart';
import 'package:spaceflight/domain/models/article.dart';

class ArticlesDioRepository implements IArticlesRepository {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.spaceflightnewsapi.net',
    ),
  );

  @override
  Future<List<Article>> fetchArticles({required int page}) async {
    try {
      final response = await dio.get('/v4/articles/');
      final articles = ArticlesResponse.fromJson(response.data)
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
