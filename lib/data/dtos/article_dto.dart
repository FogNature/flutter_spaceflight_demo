import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spaceflight/data/database/app_database.dart';
import 'package:spaceflight/domain/models/article.dart';

part 'article_dto.freezed.dart';
part 'article_dto.g.dart';

@freezed
class ArticleDto with _$ArticleDto {
  const ArticleDto._();

  const factory ArticleDto({
    required int id,
    required String title,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'news_site') required String newsSite,
    required String summary,
    @JsonKey(name: 'published_at') required DateTime publishedAt,
  }) = _ArticleDto;

  factory ArticleDto.fromJson(Map<String, dynamic> json) => _$ArticleDtoFromJson(json);

  factory ArticleDto.fromDatabase(ArticleItem dbItem) => ArticleDto(
        id: dbItem.networkId,
        title: dbItem.title,
        imageUrl: dbItem.imageUrl,
        newsSite: dbItem.newsSite,
        summary: dbItem.summary,
        publishedAt: dbItem.publishedAt,
      );

  Article toDomain() => Article(
        id: id,
        title: title,
        imageUrl: imageUrl,
        newsSite: newsSite,
        summary: summary,
        publishedAt: publishedAt,
      );
}
