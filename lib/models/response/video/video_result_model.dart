// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_mot/models/response/video/video_model.dart';

part 'video_result_model.freezed.dart';

part 'video_result_model.g.dart';

@freezed
class VideoResult with _$VideoResult {
  const factory VideoResult({
    required int id,
    @JsonKey(name: 'results')required List<Video> videos,
  }) = _VideoResult;

  const VideoResult._();

  factory VideoResult.fromJson(Map<String, dynamic> json) => _$VideoResultFromJson(json);

  factory VideoResult.empty() => const VideoResult(
    id: 0,
    videos: <Video>[],
  );
}
