
import 'package:get/get.dart';
import 'package:movie_mot/controllers/home/home_controller.dart';
import 'package:movie_mot/data/usecase/movies/fetch_popular_movies.dart';
import 'package:movie_mot/data/usecase/movies/search_movies.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController(
      fetchPopularMovies: FetchPopularMovies(
        remoteRepository: Get.find(),
      ), searchMovie: SearchMovie(
        remoteRepository: Get.find(),
    )
    ));
  }

}