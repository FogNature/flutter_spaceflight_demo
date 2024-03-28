import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required int id,
    required String title,
    required String imageUrl,
    required String newsSite,
    required String summary,
    required DateTime publishedAt,
  }) = _Article;
}
