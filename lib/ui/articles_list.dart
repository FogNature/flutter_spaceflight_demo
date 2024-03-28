import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spaceflight/bloc/articles_bloc.dart';
import 'package:spaceflight/domain/models/article.dart';
import 'package:spaceflight/ui/article_item.dart';
import 'package:spaceflight/ui/loading.dart';

class ArticlesList extends StatefulWidget {
  final List<Article> list;
  final bool loading;

  const ArticlesList({super.key, required this.list, required this.loading});

  @override
  _ArticlesListState createState() => _ArticlesListState();
}

class _ArticlesListState extends State<ArticlesList> {
  late ScrollController _scrollController;

  @override
  initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_loadNext);
  }

  @override
  dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _loadNext() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent &&
        !widget.loading) {
      context.read<ArticlesBloc>().add(const ArticlesEvent.nextPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _scrollController,
      itemBuilder: (BuildContext context, int index) {
        if (index < widget.list.length) {
          return ArticleItem(article: widget.list[index]);
        } else {
          return SizedBox(height: 100, child: Loading());
        }
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemCount: widget.list.length + (widget.loading ? 1 : 0),
    );
  }
}
