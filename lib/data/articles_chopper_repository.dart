import 'package:chopper/chopper.dart';
import 'package:spaceflight/data/converter.dart';
import 'package:spaceflight/data/services/chopper/articles_chopper_service.dart';
import 'package:spaceflight/domain/i_articles_repository.dart';
import 'package:spaceflight/domain/models/article.dart';

class ArticlesChopperRepository implements IArticlesRepository {
  final chopper = ChopperClient(
    baseUrl: Uri.parse('https://api.spaceflightnewsapi.net/v4'),
    services: [ArticlesChopperService.create()],
    converter: MyConverter(),
  );

  @override
  Future<List<Article>> fetchArticles({required int page}) async {
    final todosService = chopper.getService<ArticlesChopperService>();
    try {
      final response = await todosService.fetchArticles();
      final rBody = response.body;
      if (rBody != null) {
        final articles = rBody.results
            .map<Article>(
              (e) => e.toDomain(),
            )
            .toList();
        return articles;
      } else {
        return [];
      }
    } catch (_) {
      rethrow;
    }
  }
}
