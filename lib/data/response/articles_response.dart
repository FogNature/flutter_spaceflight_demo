import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spaceflight/data/dtos/article_dto.dart';

part 'articles_response.freezed.dart';
part 'articles_response.g.dart';

@freezed
class ArticlesResponse with _$ArticlesResponse {
  const factory ArticlesResponse({
    required int count,
    String? next,
    String? previous,
    required List<ArticleDto> results,
  }) = _ArticlesResponse;

  factory ArticlesResponse.fromJson(Map<String, dynamic> json) => _$ArticlesResponseFromJson(json);
}
