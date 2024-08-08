class Endpoints{
  static const String popularMovies = "movie/popular?language=en-US&page=1";
  static  String movieDetail(int movieId) => "movie/$movieId?language=en-US";
  static  String movieCredits(int movieId) => "movie/$movieId/credits?language=en-US'";
}