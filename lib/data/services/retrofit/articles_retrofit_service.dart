import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spaceflight/data/response/articles_response.dart';

part 'articles_retrofit_service.g.dart';

@RestApi(baseUrl: 'https://api.spaceflightnewsapi.net/v4/articles/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('')
  Future<ArticlesResponse> fetchArticles(
    @Query('limit') int limit,
    @Query('offset') int offset,
  );
}
