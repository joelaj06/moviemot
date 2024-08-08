import 'package:dartz/dartz.dart';
import 'package:movie_mot/core/errors/failure.dart';
import 'package:movie_mot/core/utils/usecase.dart';
import 'package:movie_mot/data/repositories/remote_repository/remote_repository.dart';
import 'package:movie_mot/models/response/video/video_result_model.dart';

class FetchMovieVideos implements UseCase<VideoResult, PageParams> {
  FetchMovieVideos({required this.remoteRepository});

  final RemoteRepository remoteRepository;

  @override
  Future<Either<Failure, VideoResult>> call(PageParams params) {
    return remoteRepository.fetchMovieVideos(params.movieId!);
  }
}
