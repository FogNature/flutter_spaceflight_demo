import 'package:chopper/chopper.dart';
import 'package:spaceflight/data/response/articles_response.dart';

part 'articles_chopper_service.chopper.dart';

@ChopperApi(baseUrl: 'https://api.spaceflightnewsapi.net/v4/articles')
abstract class ArticlesChopperService extends ChopperService {
  static ArticlesChopperService create([ChopperClient? client]) => _$ArticlesChopperService(client);

  @Get()
  Future<Response<ArticlesResponse>> fetchArticles();
}
