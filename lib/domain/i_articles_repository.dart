import 'package:spaceflight/domain/models/article.dart';

abstract class IArticlesRepository {
  Future<List<Article>> fetchArticles({required int page});
}
