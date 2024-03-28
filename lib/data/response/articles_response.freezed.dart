// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticlesResponse _$ArticlesResponseFromJson(Map<String, dynamic> json) {
  return _ArticlesResponse.fromJson(json);
}

/// @nodoc
mixin _$ArticlesResponse {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<ArticleDto> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticlesResponseCopyWith<ArticlesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlesResponseCopyWith<$Res> {
  factory $ArticlesResponseCopyWith(
          ArticlesResponse value, $Res Function(ArticlesResponse) then) =
      _$ArticlesResponseCopyWithImpl<$Res, ArticlesResponse>;
  @useResult
  $Res call(
      {int count, String? next, String? previous, List<ArticleDto> results});
}

/// @nodoc
class _$ArticlesResponseCopyWithImpl<$Res, $Val extends ArticlesResponse>
    implements $ArticlesResponseCopyWith<$Res> {
  _$ArticlesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ArticleDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticlesResponseImplCopyWith<$Res>
    implements $ArticlesResponseCopyWith<$Res> {
  factory _$$ArticlesResponseImplCopyWith(_$ArticlesResponseImpl value,
          $Res Function(_$ArticlesResponseImpl) then) =
      __$$ArticlesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count, String? next, String? previous, List<ArticleDto> results});
}

/// @nodoc
class __$$ArticlesResponseImplCopyWithImpl<$Res>
    extends _$ArticlesResponseCopyWithImpl<$Res, _$ArticlesResponseImpl>
    implements _$$ArticlesResponseImplCopyWith<$Res> {
  __$$ArticlesResponseImplCopyWithImpl(_$ArticlesResponseImpl _value,
      $Res Function(_$ArticlesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$ArticlesResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ArticleDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticlesResponseImpl implements _ArticlesResponse {
  const _$ArticlesResponseImpl(
      {required this.count,
      this.next,
      this.previous,
      required final List<ArticleDto> results})
      : _results = results;

  factory _$ArticlesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticlesResponseImplFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<ArticleDto> _results;
  @override
  List<ArticleDto> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ArticlesResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticlesResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticlesResponseImplCopyWith<_$ArticlesResponseImpl> get copyWith =>
      __$$ArticlesResponseImplCopyWithImpl<_$ArticlesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticlesResponseImplToJson(
      this,
    );
  }
}

abstract class _ArticlesResponse implements ArticlesResponse {
  const factory _ArticlesResponse(
      {required final int count,
      final String? next,
      final String? previous,
      required final List<ArticleDto> results}) = _$ArticlesResponseImpl;

  factory _ArticlesResponse.fromJson(Map<String, dynamic> json) =
      _$ArticlesResponseImpl.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<ArticleDto> get results;
  @override
  @JsonKey(ignore: true)
  _$$ArticlesResponseImplCopyWith<_$ArticlesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
