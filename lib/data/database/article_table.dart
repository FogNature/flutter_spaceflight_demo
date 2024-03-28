import 'package:drift/drift.dart';

class ArticleItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get networkId => integer()();
  TextColumn get title => text()();
  TextColumn get imageUrl => text()();
  TextColumn get newsSite => text()();
  TextColumn get summary => text()();
  DateTimeColumn get publishedAt => dateTime()();
}
