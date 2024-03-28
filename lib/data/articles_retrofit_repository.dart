import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spaceflight/data/database/app_database.dart';
import 'package:spaceflight/data/dtos/article_dto.dart';
import 'package:spaceflight/domain/i_articles_repository.dart';
import 'package:spaceflight/domain/models/article.dart';

class ArticlesRetrofitRepository implements IArticlesRepository {
  final dio = Dio();

  final limit = 10;

  @override
  Future<List<Article>> fetchArticles({required int page}) async {
    final sharedPrefs = await SharedPreferences.getInstance();

    final List<ArticleDto> cachedItems = [];
    try {
      final db = AppDatabaseSingleton.instance;
      final items = await db.getCachedArticles();
      cachedItems.addAll(items.map((e) => ArticleDto.fromDatabase(e)));
    } catch (_) {
      rethrow;
    }

    return cachedItems
        .map<Article>(
          (e) => e.toDomain(),
        )
        .toList();
    /*


    if (cacheDate != null && cacheDate.difference(DateTime.now()).inDays.abs() < 1) {

    } else if (cacheDate != null) {
      await db.deleteAllArticles();
    }
*/
    /*try {
      final db = AppDatabaseSingleton.instance;
      final offset = page * limit;
      final response = await RestClient(dio).fetchArticles(limit, offset);
      final articles = response.results
          .map<Article>(
            (e) => e.toDomain(),
          )
          .toList();
      await db.insertNewArticles(
        response.results
            .where(
              (e) => !cachedItems.contains(e),
            )
            .map<Article>(
              (e) => e.toDomain(),
            )
            .toList(),
      );
      return articles;
    } catch (_) {
      return cachedItems
          .map<Article>(
            (e) => e.toDomain(),
          )
          .toList();
    }*/
  }
}
