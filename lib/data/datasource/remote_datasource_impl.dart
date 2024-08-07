import 'package:movie_mot/data/datasource/remote_datasource.dart';
import 'package:movie_mot/data/datasource/endpoints.dart';
import 'package:movie_mot/models/response/movie/movie_detail_model.dart';
import 'package:movie_mot/models/response/movie/movie_result_model.dart';

import '../../core/utils/app_http_client.dart';

class RemoteDatasourceImpl implements RemoteDatasource {
  RemoteDatasourceImpl({required AppHTTPClient client}) : _client = client;

  final AppHTTPClient _client;

  @override
  Future<MovieResult> fetchPopularMovies() async {
    final Map<String, dynamic> json =
        await _client.get(Endpoints.popularMovies);
    return MovieResult.fromJson(json);
  }

  @override
  Future<MovieDetail> fetchMovieDetail(int movieId) async {
   final Map<String, dynamic> json = await _client.get(Endpoints.movieDetail(movieId));
    return MovieDetail.fromJson(json);
  }
}
