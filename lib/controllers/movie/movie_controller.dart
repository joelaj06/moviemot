import 'package:get/get.dart';
import 'package:movie_mot/core/utils/usecase.dart';
import 'package:movie_mot/data/usecase/movies/fetch_movie_detail.dart';

import '../../models/response/movie/movie_detail_model.dart';

class MovieController extends GetxController{
  MovieController({required this.fetchMovieDetail});

  final FetchMovieDetail fetchMovieDetail;

  Rx<MovieDetail> movieDetail = MovieDetail.empty().obs;

  void getMovieDetail(int movieId) async {
    final result = await fetchMovieDetail(PageParams(movieId: movieId));
    result.fold((failure) {
      Get.snackbar('Error', failure.message);
    }, (MovieDetail movie) {
     movieDetail(movie);
    });
  }

}