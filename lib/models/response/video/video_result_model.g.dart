// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoResultImpl _$$VideoResultImplFromJson(Map<String, dynamic> json) =>
    _$VideoResultImpl(
      id: (json['id'] as num).toInt(),
      videos: (json['results'] as List<dynamic>)
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VideoResultImplToJson(_$VideoResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.videos,
    };
