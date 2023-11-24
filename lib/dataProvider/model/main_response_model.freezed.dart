// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainResponseModel _$MainResponseModelFromJson(Map<String, dynamic> json) {
  return _MainResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MainResponseModel {
  int? get page => throw _privateConstructorUsedError;

  @JsonKey(name: "results")
  List<Movie>? get movies => throw _privateConstructorUsedError;

  int? get totalPages => throw _privateConstructorUsedError;

  int? get totalResults => throw _privateConstructorUsedError;

  @JsonKey(name: "status_code")
  int? get statusCode => throw _privateConstructorUsedError;

  @JsonKey(name: "status_message")
  String? get statusMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainResponseModelCopyWith<MainResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainResponseModelCopyWith<$Res> {
  factory $MainResponseModelCopyWith(
          MainResponseModel value, $Res Function(MainResponseModel) then) =
      _$MainResponseModelCopyWithImpl<$Res, MainResponseModel>;

  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: "results") List<Movie>? movies,
      int? totalPages,
      int? totalResults,
      @JsonKey(name: "status_code") int? statusCode,
      @JsonKey(name: "status_message") String? statusMessage});
}

/// @nodoc
class _$MainResponseModelCopyWithImpl<$Res, $Val extends MainResponseModel>
    implements $MainResponseModelCopyWith<$Res> {
  _$MainResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? movies = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      movies: freezed == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainResponseModelImplCopyWith<$Res>
    implements $MainResponseModelCopyWith<$Res> {
  factory _$$MainResponseModelImplCopyWith(_$MainResponseModelImpl value,
          $Res Function(_$MainResponseModelImpl) then) =
      __$$MainResponseModelImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: "results") List<Movie>? movies,
      int? totalPages,
      int? totalResults,
      @JsonKey(name: "status_code") int? statusCode,
      @JsonKey(name: "status_message") String? statusMessage});
}

/// @nodoc
class __$$MainResponseModelImplCopyWithImpl<$Res>
    extends _$MainResponseModelCopyWithImpl<$Res, _$MainResponseModelImpl>
    implements _$$MainResponseModelImplCopyWith<$Res> {
  __$$MainResponseModelImplCopyWithImpl(_$MainResponseModelImpl _value,
      $Res Function(_$MainResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? movies = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_$MainResponseModelImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      movies: freezed == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MainResponseModelImpl implements _MainResponseModel {
  const _$MainResponseModelImpl(
      {this.page,
      @JsonKey(name: "results") final List<Movie>? movies,
      this.totalPages,
      this.totalResults,
      @JsonKey(name: "status_code") this.statusCode,
      @JsonKey(name: "status_message") this.statusMessage})
      : _movies = movies;

  factory _$MainResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainResponseModelImplFromJson(json);

  @override
  final int? page;
  final List<Movie>? _movies;

  @override
  @JsonKey(name: "results")
  List<Movie>? get movies {
    final value = _movies;
    if (value == null) return null;
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalPages;
  @override
  final int? totalResults;
  @override
  @JsonKey(name: "status_code")
  final int? statusCode;
  @override
  @JsonKey(name: "status_message")
  final String? statusMessage;

  @override
  String toString() {
    return 'MainResponseModel(page: $page, movies: $movies, totalPages: $totalPages, totalResults: $totalResults, statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainResponseModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_movies),
      totalPages,
      totalResults,
      statusCode,
      statusMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainResponseModelImplCopyWith<_$MainResponseModelImpl> get copyWith =>
      __$$MainResponseModelImplCopyWithImpl<_$MainResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MainResponseModel implements MainResponseModel {
  const factory _MainResponseModel(
          {final int? page,
          @JsonKey(name: "results") final List<Movie>? movies,
          final int? totalPages,
          final int? totalResults,
          @JsonKey(name: "status_code") final int? statusCode,
          @JsonKey(name: "status_message") final String? statusMessage}) =
      _$MainResponseModelImpl;

  factory _MainResponseModel.fromJson(Map<String, dynamic> json) =
      _$MainResponseModelImpl.fromJson;

  @override
  int? get page;

  @override
  @JsonKey(name: "results")
  List<Movie>? get movies;

  @override
  int? get totalPages;

  @override
  int? get totalResults;

  @override
  @JsonKey(name: "status_code")
  int? get statusCode;

  @override
  @JsonKey(name: "status_message")
  String? get statusMessage;

  @override
  @JsonKey(ignore: true)
  _$$MainResponseModelImplCopyWith<_$MainResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
