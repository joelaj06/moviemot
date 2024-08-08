import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import 'package:movie_mot/core/errors/failure.dart';
import 'package:movie_mot/data/repositories/remote_repository/remote_repository.dart';

import '../../../core/utils/usecase.dart';
import '../../../models/response/movie/movie_result_model.dart';

class FetchPopularMovies implements UseCase<MovieResult, PageParams> {
  FetchPopularMovies({required this.remoteRepository});
  final RemoteRepository remoteRepository;
  @override
  Future<Either<Failure, MovieResult>> call(PageParams params) {
    return remoteRepository.fetchPopularMovies(page: params.page!);
  }

}