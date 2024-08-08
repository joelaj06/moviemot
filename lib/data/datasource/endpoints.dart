class Endpoints{
  static  String popularMovies({required int page}) => "movie/popular?language=en-US&page=$page";
  static  String movieDetail(int movieId) => "movie/$movieId?language=en-US";
  static  String movieCredits(int movieId) => "movie/$movieId/credits?language=en-US'";
  static  String movieVideos(int movieId) => "movie/$movieId/videos";
  static  String searchMovies({required String query}) => "search/movie?language=en-US&page=1&query=$query";
}