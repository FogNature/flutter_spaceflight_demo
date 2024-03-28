part of 'articles_bloc.dart';

@freezed
class ArticlesState with _$ArticlesState {
  const ArticlesState._();

  const factory ArticlesState({
    required int page,
    required bool loading,
    String? error,
    List<Article>? articles,
  }) = _ArticlesState;
}
