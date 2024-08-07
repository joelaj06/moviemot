import 'package:dartz/dartz.dart';
import 'package:movie_mot/models/response/movie/movie_detail_model.dart';

import '../../../core/errors/failure.dart';
import '../../../models/response/movie/movie_result_model.dart';

abstract class RemoteRepository{
  Future<Either<Failure, MovieResult>> fetchPopularMovies();
  Future<Either<Failure, MovieDetail>> fetchMovieDetail(int movieId);
}