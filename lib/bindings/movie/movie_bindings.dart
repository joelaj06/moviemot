import 'package:get/get.dart';
import 'package:movie_mot/controllers/movie/movie_controller.dart';
import 'package:movie_mot/data/usecase/credit/fetch_movie_credits.dart';

import '../../data/usecase/movies/fetch_movie_detail.dart';

class MovieBindings extends Bindings{
  @override
  void dependencies() {
    Get.put<MovieController>(
      MovieController(
        fetchMovieDetail: FetchMovieDetail(
          remoteRepository: Get.find(),
      ), fetchMovieCredits: FetchMovieCredits(
        remoteRepository:  Get.find(),
      ),),
    );
  }

}