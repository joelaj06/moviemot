// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieResultImpl _$$MovieResultImplFromJson(Map<String, dynamic> json) =>
    _$MovieResultImpl(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalResults: (json['totalResults'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MovieResultImplToJson(_$MovieResultImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
