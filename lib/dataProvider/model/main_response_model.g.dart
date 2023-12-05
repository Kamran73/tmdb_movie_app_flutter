// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainResponseModelImpl _$$MainResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MainResponseModelImpl(
      page: json['page'] as int?,
      movies: (json['results'] as List<dynamic>?)
          ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
      totalResults: json['totalResults'] as int?,
      statusCode: json['status_code'] as int?,
      statusMessage: json['status_message'] as String?,
    );

Map<String, dynamic> _$$MainResponseModelImplToJson(
        _$MainResponseModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.movies,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
      'status_code': instance.statusCode,
      'status_message': instance.statusMessage,
    };
