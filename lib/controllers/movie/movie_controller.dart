import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:movie_mot/core/routes/app_routes.dart';
import 'package:movie_mot/core/utils/usecase.dart';
import 'package:movie_mot/data/usecase/credit/fetch_movie_credits.dart';
import 'package:movie_mot/data/usecase/movies/fetch_movie_detail.dart';
import 'package:movie_mot/data/usecase/video/fetch_movie_videos.dart';
import 'package:movie_mot/models/response/cast/cast_model.dart';
import 'package:movie_mot/models/response/cast/cast_model.dart';
import 'package:movie_mot/models/response/video/video_model.dart';
import 'package:movie_mot/models/response/video/video_result_model.dart';
import 'package:movie_mot/screens/video/video_screen.dart';

import '../../core/errors/failure.dart';
import '../../models/response/cast/credit_model.dart';
import '../../models/response/movie/movie_detail_model.dart';

class MovieController extends GetxController {
  MovieController(
      {required this.fetchMovieDetail,
      required this.fetchMovieCredits,
      required this.fetchMovieVideos});

  final FetchMovieDetail fetchMovieDetail;
  final FetchMovieCredits fetchMovieCredits;
  final FetchMovieVideos fetchMovieVideos;

  Rx<MovieDetail> movieDetail = MovieDetail.empty().obs;
  RxBool isLoading = false.obs;
  RxBool isCreditsLoading = false.obs;
  RxBool isLoadingVideos = false.obs;
  RxList<Video> videos = <Video>[].obs;
  RxList<Cast> cast = <Cast>[].obs;
  RxBool enablePlayButton = false.obs;
  RxString videoUrl = ''.obs;

  //set video links using a map
  final Map<String, String> links = {
    'YouTube': 'https://www.youtube.com/watch?v=',
    'Vimeo': 'https://player.vimeo.com/',
  };



  void getMovie(int movieId) async {
    _getMovieDetail(movieId);
    _getMovieCredits(movieId);
    _getMovieVideos(movieId);
  }

  // Get Video Link
  String getVideoLink(String key, String site) {
    return links[site]! + key;
  }

  void playTrailer(BuildContext context) {
    //retrieve first trailer with type teaser
    final Video teaser =
        videos.firstWhere((Video video) => video.type == 'Teaser');
    final String videoLink = getVideoLink(teaser.key, teaser.site);
    debugPrint(videoLink);
  //  Get.toNamed(AppRoutes.videoPlayer, arguments: videoLink);
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => VideoPlayerScreen(videoLink: videoLink)),
    );
  }

  void _getMovieVideos(int movieId) async {
    isLoadingVideos(true);
    enablePlayButton(false);
    final Either<Failure, VideoResult> result =
        await fetchMovieVideos(PageParams(movieId: movieId));
    result.fold((Failure failure) {
      isLoadingVideos(false);
      Get.snackbar('Error', failure.message);
    }, (VideoResult results) {
      videos(results.videos);
      if (results.videos.isNotEmpty) {
        enablePlayButton(
            true); //enable watch trailer button when videos are available
      }
      isLoadingVideos(false);
    });
  }

  void _getMovieCredits(int movieId) async {
    isCreditsLoading(true);
    final Either<Failure, Credit> result =
        await fetchMovieCredits(PageParams(movieId: movieId));
    result.fold((Failure failure) {
      isCreditsLoading(false);
      Get.snackbar('Error', failure.message);
    }, (Credit credit) {
      isCreditsLoading(false);
      cast(credit.cast);
    });
  }

  void _getMovieDetail(int movieId) async {
    isLoading(true);
    final Either<Failure, MovieDetail> result =
        await fetchMovieDetail(PageParams(movieId: movieId));
    result.fold((failure) {
      isLoading(false);
      Get.snackbar('Error', failure.message);
    }, (MovieDetail movie) {
      isLoading(false);
      movieDetail(movie);
    });
  }
}
