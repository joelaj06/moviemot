import 'package:dartz/dartz.dart';
import 'package:movie_mot/core/errors/failure.dart';
import 'package:movie_mot/core/utils/usecase.dart';
import 'package:movie_mot/data/repositories/remote_repository/remote_repository.dart';
import 'package:movie_mot/models/response/movie/movie_detail_model.dart';


class FetchMovieDetail implements UseCase<MovieDetail, PageParams>{
  FetchMovieDetail({required this.remoteRepository});

  final RemoteRepository remoteRepository;

  @override
  Future<Either<Failure, MovieDetail>> call(PageParams params) {
    return remoteRepository.fetchMovieDetail(params.movieId!);
  }

}