import 'package:dartz/dartz.dart';
import 'package:movie_mot/core/errors/failure.dart';
import 'package:movie_mot/core/utils/usecase.dart';
import 'package:movie_mot/models/response/movie/movie_result_model.dart';

import '../../repositories/remote_repository/remote_repository.dart';

class SearchMovie implements UseCase<MovieResult, PageParams>{
  SearchMovie({required this.remoteRepository});

  final RemoteRepository remoteRepository;
  @override
  Future<Either<Failure, MovieResult>> call(PageParams params) {
    return remoteRepository.fetchSearchMovies(query: params.query!);
  }

}