// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ArticleItemsTable extends ArticleItems
    with TableInfo<$ArticleItemsTable, ArticleItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticleItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _networkIdMeta =
      const VerificationMeta('networkId');
  @override
  late final GeneratedColumn<int> networkId = GeneratedColumn<int>(
      'network_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _newsSiteMeta =
      const VerificationMeta('newsSite');
  @override
  late final GeneratedColumn<String> newsSite = GeneratedColumn<String>(
      'news_site', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _summaryMeta =
      const VerificationMeta('summary');
  @override
  late final GeneratedColumn<String> summary = GeneratedColumn<String>(
      'summary', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _publishedAtMeta =
      const VerificationMeta('publishedAt');
  @override
  late final GeneratedColumn<DateTime> publishedAt = GeneratedColumn<DateTime>(
      'published_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, networkId, title, imageUrl, newsSite, summary, publishedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'article_items';
  @override
  VerificationContext validateIntegrity(Insertable<ArticleItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('network_id')) {
      context.handle(_networkIdMeta,
          networkId.isAcceptableOrUnknown(data['network_id']!, _networkIdMeta));
    } else if (isInserting) {
      context.missing(_networkIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('news_site')) {
      context.handle(_newsSiteMeta,
          newsSite.isAcceptableOrUnknown(data['news_site']!, _newsSiteMeta));
    } else if (isInserting) {
      context.missing(_newsSiteMeta);
    }
    if (data.containsKey('summary')) {
      context.handle(_summaryMeta,
          summary.isAcceptableOrUnknown(data['summary']!, _summaryMeta));
    } else if (isInserting) {
      context.missing(_summaryMeta);
    }
    if (data.containsKey('published_at')) {
      context.handle(
          _publishedAtMeta,
          publishedAt.isAcceptableOrUnknown(
              data['published_at']!, _publishedAtMeta));
    } else if (isInserting) {
      context.missing(_publishedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ArticleItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticleItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      networkId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}network_id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url'])!,
      newsSite: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}news_site'])!,
      summary: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}summary'])!,
      publishedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}published_at'])!,
    );
  }

  @override
  $ArticleItemsTable createAlias(String alias) {
    return $ArticleItemsTable(attachedDatabase, alias);
  }
}

class ArticleItem extends DataClass implements Insertable<ArticleItem> {
  final int id;
  final int networkId;
  final String title;
  final String imageUrl;
  final String newsSite;
  final String summary;
  final DateTime publishedAt;
  const ArticleItem(
      {required this.id,
      required this.networkId,
      required this.title,
      required this.imageUrl,
      required this.newsSite,
      required this.summary,
      required this.publishedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['network_id'] = Variable<int>(networkId);
    map['title'] = Variable<String>(title);
    map['image_url'] = Variable<String>(imageUrl);
    map['news_site'] = Variable<String>(newsSite);
    map['summary'] = Variable<String>(summary);
    map['published_at'] = Variable<DateTime>(publishedAt);
    return map;
  }

  ArticleItemsCompanion toCompanion(bool nullToAbsent) {
    return ArticleItemsCompanion(
      id: Value(id),
      networkId: Value(networkId),
      title: Value(title),
      imageUrl: Value(imageUrl),
      newsSite: Value(newsSite),
      summary: Value(summary),
      publishedAt: Value(publishedAt),
    );
  }

  factory ArticleItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ArticleItem(
      id: serializer.fromJson<int>(json['id']),
      networkId: serializer.fromJson<int>(json['networkId']),
      title: serializer.fromJson<String>(json['title']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      newsSite: serializer.fromJson<String>(json['newsSite']),
      summary: serializer.fromJson<String>(json['summary']),
      publishedAt: serializer.fromJson<DateTime>(json['publishedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'networkId': serializer.toJson<int>(networkId),
      'title': serializer.toJson<String>(title),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'newsSite': serializer.toJson<String>(newsSite),
      'summary': serializer.toJson<String>(summary),
      'publishedAt': serializer.toJson<DateTime>(publishedAt),
    };
  }

  ArticleItem copyWith(
          {int? id,
          int? networkId,
          String? title,
          String? imageUrl,
          String? newsSite,
          String? summary,
          DateTime? publishedAt}) =>
      ArticleItem(
        id: id ?? this.id,
        networkId: networkId ?? this.networkId,
        title: title ?? this.title,
        imageUrl: imageUrl ?? this.imageUrl,
        newsSite: newsSite ?? this.newsSite,
        summary: summary ?? this.summary,
        publishedAt: publishedAt ?? this.publishedAt,
      );
  @override
  String toString() {
    return (StringBuffer('ArticleItem(')
          ..write('id: $id, ')
          ..write('networkId: $networkId, ')
          ..write('title: $title, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('newsSite: $newsSite, ')
          ..write('summary: $summary, ')
          ..write('publishedAt: $publishedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, networkId, title, imageUrl, newsSite, summary, publishedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ArticleItem &&
          other.id == this.id &&
          other.networkId == this.networkId &&
          other.title == this.title &&
          other.imageUrl == this.imageUrl &&
          other.newsSite == this.newsSite &&
          other.summary == this.summary &&
          other.publishedAt == this.publishedAt);
}

class ArticleItemsCompanion extends UpdateCompanion<ArticleItem> {
  final Value<int> id;
  final Value<int> networkId;
  final Value<String> title;
  final Value<String> imageUrl;
  final Value<String> newsSite;
  final Value<String> summary;
  final Value<DateTime> publishedAt;
  const ArticleItemsCompanion({
    this.id = const Value.absent(),
    this.networkId = const Value.absent(),
    this.title = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.newsSite = const Value.absent(),
    this.summary = const Value.absent(),
    this.publishedAt = const Value.absent(),
  });
  ArticleItemsCompanion.insert({
    this.id = const Value.absent(),
    required int networkId,
    required String title,
    required String imageUrl,
    required String newsSite,
    required String summary,
    required DateTime publishedAt,
  })  : networkId = Value(networkId),
        title = Value(title),
        imageUrl = Value(imageUrl),
        newsSite = Value(newsSite),
        summary = Value(summary),
        publishedAt = Value(publishedAt);
  static Insertable<ArticleItem> custom({
    Expression<int>? id,
    Expression<int>? networkId,
    Expression<String>? title,
    Expression<String>? imageUrl,
    Expression<String>? newsSite,
    Expression<String>? summary,
    Expression<DateTime>? publishedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (networkId != null) 'network_id': networkId,
      if (title != null) 'title': title,
      if (imageUrl != null) 'image_url': imageUrl,
      if (newsSite != null) 'news_site': newsSite,
      if (summary != null) 'summary': summary,
      if (publishedAt != null) 'published_at': publishedAt,
    });
  }

  ArticleItemsCompanion copyWith(
      {Value<int>? id,
      Value<int>? networkId,
      Value<String>? title,
      Value<String>? imageUrl,
      Value<String>? newsSite,
      Value<String>? summary,
      Value<DateTime>? publishedAt}) {
    return ArticleItemsCompanion(
      id: id ?? this.id,
      networkId: networkId ?? this.networkId,
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      newsSite: newsSite ?? this.newsSite,
      summary: summary ?? this.summary,
      publishedAt: publishedAt ?? this.publishedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (networkId.present) {
      map['network_id'] = Variable<int>(networkId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (newsSite.present) {
      map['news_site'] = Variable<String>(newsSite.value);
    }
    if (summary.present) {
      map['summary'] = Variable<String>(summary.value);
    }
    if (publishedAt.present) {
      map['published_at'] = Variable<DateTime>(publishedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticleItemsCompanion(')
          ..write('id: $id, ')
          ..write('networkId: $networkId, ')
          ..write('title: $title, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('newsSite: $newsSite, ')
          ..write('summary: $summary, ')
          ..write('publishedAt: $publishedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $ArticleItemsTable articleItems = $ArticleItemsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [articleItems];
}
