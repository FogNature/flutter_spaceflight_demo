// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_chopper_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ArticlesChopperService extends ArticlesChopperService {
  _$ArticlesChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ArticlesChopperService;

  @override
  Future<Response<ArticlesResponse>> fetchArticles() {
    final Uri $url =
        Uri.parse('https://api.spaceflightnewsapi.net/v4/articles');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ArticlesResponse, ArticlesResponse>($request);
  }
}
