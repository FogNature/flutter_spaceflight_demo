import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spaceflight/domain/i_articles_repository.dart';
import 'package:spaceflight/domain/models/article.dart';

part 'articles_bloc.freezed.dart';
part 'articles_event.dart';
part 'articles_state.dart';

class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  final IArticlesRepository _repository;

  ArticlesBloc(this._repository)
      : super(const ArticlesState(
          page: 0,
          loading: false,
        )) {
    on<ArticlesEvent>((event, emit) async {
      await event.map(
        started: (_) => _started(emit),
        nextPage: (_) => _nextPage(emit),
      );
    });
  }

  Future<void> _started(Emitter<ArticlesState> emit) async {
    emit(const ArticlesState(
      page: 0,
      loading: true,
    ));
    try {
      final list = await _repository.fetchArticles(page: 0);
      emit(ArticlesState(
        articles: list,
        page: 0,
        loading: false,
      ));
    } catch (e) {
      emit(const ArticlesState(
        error: 'Fetch error',
        page: 0,
        loading: false,
      ));
    }
  }

  Future<void> _nextPage(Emitter<ArticlesState> emit) async {
    final newPage = state.page + 1;
    emit(ArticlesState(
      page: newPage,
      articles: state.articles,
      loading: true,
    ));
    try {
      final list = await _repository.fetchArticles(page: newPage);
      emit(ArticlesState(
        articles: [...(state.articles ?? []), ...list],
        page: newPage,
        loading: false,
      ));
    } catch (e) {
      emit(ArticlesState(
        error: 'Fetch error',
        page: newPage,
        articles: state.articles,
        loading: false,
      ));
    }
  }
}
