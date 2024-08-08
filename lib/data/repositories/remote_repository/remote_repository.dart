import 'package:dartz/dartz.dart';
import 'package:movie_mot/models/response/movie/movie_detail_model.dart';
import 'package:movie_mot/models/response/video/video_result_model.dart';

import '../../../core/errors/failure.dart';
import '../../../models/response/cast/credit_model.dart';
import '../../../models/response/movie/movie_result_model.dart';

abstract class RemoteRepository {
  Future<Either<Failure, MovieResult>> fetchPopularMovies({required int page});

  Future<Either<Failure, MovieDetail>> fetchMovieDetail(int movieId);

  Future<Either<Failure, Credit>> fetchMovieCredits(int movieId);

  Future<Either<Failure, VideoResult>> fetchMovieVideos(int movieId);

  Future<Either<Failure, MovieResult>> fetchSearchMovies(
      {required String query});
}
