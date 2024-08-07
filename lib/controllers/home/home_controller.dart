import 'package:get/get.dart';
import 'package:movie_mot/controllers/movie/movie_arguments.dart';
import 'package:movie_mot/core/routes/app_routes.dart';
import 'package:movie_mot/data/usecase/movies/fetch_popular_movies.dart';

import '../../core/errors/failure.dart';
import '../../core/utils/usecase.dart';
import '../../models/response/movie/movie_model.dart';
import '../../models/response/movie/movie_result_model.dart';

class HomeController extends GetxController {
  HomeController({required this.fetchPopularMovies});

  final FetchPopularMovies fetchPopularMovies;

  //reactive variables
  RxBool isLoading = false.obs;
  RxList<Movie> movies = <Movie>[].obs;

  @override
  void onInit() {
    getPopularMovies();
    super.onInit();
  }

  void navigateToMovieDetailsScreen(Movie movie) {
    Get.toNamed(AppRoutes.movieDetails,
        arguments: MovieArguments(movie: movie));
  }

  void getPopularMovies() async {
    isLoading(true);
    final result = await fetchPopularMovies(NoParams());
    result.fold((Failure failure) {
      isLoading(false);
      Get.snackbar('Error', failure.message);
    }, (MovieResult movieResult) {
      movies(movieResult.results);
      isLoading(false);
    });
  }
}
