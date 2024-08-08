import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:movie_mot/controllers/movie/movie_arguments.dart';
import 'package:movie_mot/core/routes/app_routes.dart';
import 'package:movie_mot/data/usecase/movies/fetch_popular_movies.dart';
import 'package:movie_mot/data/usecase/movies/search_movies.dart';

import '../../core/errors/failure.dart';
import '../../core/utils/usecase.dart';
import '../../models/response/movie/movie_model.dart';
import '../../models/response/movie/movie_result_model.dart';

class HomeController extends GetxController {
  HomeController({required this.fetchPopularMovies, required this.searchMovie});

  final FetchPopularMovies fetchPopularMovies;
  final SearchMovie searchMovie;

  //reactive variables
  RxBool isLoading = false.obs;
  RxBool loadingFreeMovies = false.obs;
  RxList<Movie> movies = <Movie>[].obs;
  RxList<Movie> freeMovies = <Movie>[].obs;
  RxList<Movie> searchedMovies = <Movie>[].obs;
  RxString query = ''.obs;

  @override
  void onInit() {
    getPopularMovies();
    getFreeMovies();
    super.onInit();
  }

  void onSearchQueryFieldInputChanged(String value) {
    query(value);
  }

  void onSearchQueryFieldSubmit(String value) {
    if(query.value.isEmpty || query.value.length < 2) return;
    searchMovies();
  }

  void searchMovies() async {
    isLoading(true);
    final Either<Failure, MovieResult> result =
        await searchMovie(PageParams(query: query.value));
    result.fold((Failure failure) {
      isLoading(false);
      Get.snackbar('Error', failure.message);
    }, (MovieResult movieResult) {
      isLoading(false);
      searchedMovies(movieResult.results);
    });
  }



  void navigateToMovieSearchScreen() {
    Get.toNamed(AppRoutes.movieSearch);
  }

  void navigateToMovieDetailsScreen(Movie movie) {
    Get.toNamed(AppRoutes.movieDetails,
        arguments: MovieArguments(movie: movie));
  }

  void getFreeMovies() async {
    loadingFreeMovies(true);
    final result = await fetchPopularMovies(const PageParams(page: 2));
    result.fold((Failure failure) {
      loadingFreeMovies(false);
      Get.snackbar('Error', failure.message);
    }, (MovieResult movieResult) {
      freeMovies(movieResult.results);
      loadingFreeMovies(false);
    });
  }

  void getPopularMovies() async {
    isLoading(true);
    final result = await fetchPopularMovies(const PageParams(page: 1));
    result.fold((Failure failure) {
      isLoading(false);
      Get.snackbar('Error', failure.message);
    }, (MovieResult movieResult) {
      movies(movieResult.results);
      isLoading(false);
    });
  }
}
