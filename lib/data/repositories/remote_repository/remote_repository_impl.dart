import 'package:dartz/dartz.dart';
import 'package:movie_mot/core/errors/failure.dart';
import 'package:movie_mot/core/utils/repository.dart';
import 'package:movie_mot/data/repositories/remote_repository/remote_repository.dart';
import 'package:movie_mot/models/response/movie/movie_detail_model.dart';
import 'package:movie_mot/models/response/movie/movie_result_model.dart';

import '../../datasource/remote_datasource.dart';

class RemoteRepositoryImpl  extends Repository implements RemoteRepository {
  RemoteRepositoryImpl({required this.remoteDatasource});
  final RemoteDatasource remoteDatasource;

  @override
  Future<Either<Failure, MovieResult>> fetchPopularMovies() {
    return makeRequest(remoteDatasource.fetchPopularMovies());
  }

  @override
  Future<Either<Failure, MovieDetail>> fetchMovieDetail(int movieId) {
    return makeRequest(remoteDatasource.fetchMovieDetail(movieId));
  }

}