import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:movie_mot/core/utils/usecase.dart';
import 'package:movie_mot/data/usecase/credit/fetch_movie_credits.dart';
import 'package:movie_mot/data/usecase/movies/fetch_movie_detail.dart';
import 'package:movie_mot/models/response/cast/cast_model.dart';
import 'package:movie_mot/models/response/cast/cast_model.dart';

import '../../core/errors/failure.dart';
import '../../models/response/cast/credit_model.dart';
import '../../models/response/movie/movie_detail_model.dart';

class MovieController extends GetxController{
  MovieController({required this.fetchMovieDetail,
  required this.fetchMovieCredits});

  final FetchMovieDetail fetchMovieDetail;
  final FetchMovieCredits fetchMovieCredits;

  Rx<MovieDetail> movieDetail = MovieDetail.empty().obs;
  RxBool isLoading = false.obs;
  RxBool isCreditsLoading = false.obs;
  RxList<Cast> cast = <Cast>[].obs;

  void getMovieCredits(int movieId) async {
    isCreditsLoading(true);
    final result = await fetchMovieCredits(PageParams(movieId: movieId));
    result.fold((Failure failure) {
      isCreditsLoading(false);
      Get.snackbar('Error', failure.message);
    }, (Credit credit) {
      isCreditsLoading(false);
     cast(credit.cast);
     print(credit);
    });
  }

  void getMovieDetail(int movieId) async {
    isLoading(true);
    final result = await fetchMovieDetail(PageParams(movieId: movieId));
    result.fold((failure) {
      isLoading(false);
      Get.snackbar('Error', failure.message);
    }, (MovieDetail movie) {
      isLoading(false);
      movieDetail(movie);
    });
  }

}