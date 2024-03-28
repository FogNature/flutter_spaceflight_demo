import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:spaceflight/data/database/article_table.dart';
import 'package:spaceflight/domain/models/article.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [ArticleItems])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<ArticleItem>> getCachedArticles() => select(articleItems).get();

  Future<int> insertNewArticle(Article item) async {
    final companion = ArticleItemsCompanion.insert(
      networkId: item.id,
      title: item.title,
      imageUrl: item.imageUrl,
      newsSite: item.newsSite,
      summary: item.summary,
      publishedAt: item.publishedAt,
    );
    return await into(articleItems).insert(companion);
  }

  Future<void> insertNewArticles(List<Article> items) async {
    final companions = items
        .map(
          (article) => ArticleItemsCompanion.insert(
            networkId: article.id,
            title: article.title,
            imageUrl: article.imageUrl,
            newsSite: article.newsSite,
            summary: article.summary,
            publishedAt: article.publishedAt,
          ),
        )
        .toList();
    await batch((batch) {
      batch.insertAll(
        articleItems,
        companions,
      );
    });
  }

  Future<void> deleteAllArticles() => delete(articleItems).go();
}

class AppDatabaseSingleton {
  static final AppDatabase _instance = AppDatabase();

  static AppDatabase get instance => _instance;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'spaceflight.sqlite'));

    // Also work around limitations on old Android versions
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    // Make sqlite3 pick a more suitable location for temporary files - the
    // one from the system may be inaccessible due to sandboxing.
    final cachebase = (await getTemporaryDirectory()).path;
    // We can't access /tmp on Android, which sqlite3 would try by default.
    // Explicitly tell it about the correct temporary directory.
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}
