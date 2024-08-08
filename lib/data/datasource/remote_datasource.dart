import 'package:movie_mot/models/response/cast/credit_model.dart';
import 'package:movie_mot/models/response/movie/movie_result_model.dart';

import '../../models/response/movie/movie_detail_model.dart';
import '../../models/response/video/video_result_model.dart';

abstract class RemoteDatasource{
  Future<MovieResult> fetchPopularMovies();
  Future<MovieDetail> fetchMovieDetail(int movieId);
  Future<Credit> fetchMovieCredits(int movieId);
  Future<VideoResult> fetchMovieVideos(int movieId);
}