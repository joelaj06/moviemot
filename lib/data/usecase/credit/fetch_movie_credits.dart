import 'package:dartz/dartz.dart';
import 'package:movie_mot/core/errors/failure.dart';
import 'package:movie_mot/core/utils/usecase.dart';
import 'package:movie_mot/models/response/cast/credit_model.dart';

import '../../repositories/remote_repository/remote_repository.dart';

class FetchMovieCredits implements UseCase<Credit, PageParams>{
  FetchMovieCredits({required this.remoteRepository});

  final RemoteRepository remoteRepository;

  @override
  Future<Either<Failure, Credit>> call(PageParams params) {
    return remoteRepository.fetchMovieCredits(params.movieId!);
  }

}