import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_mot/constants/app_assets_images.dart';
import 'package:movie_mot/constants/app_padding.dart';
import 'package:movie_mot/constants/app_spacing.dart';
import 'package:movie_mot/controllers/movie/movie_controller.dart';
import 'package:movie_mot/core/themes/app_theme.dart';

import '../../controllers/movie/movie_arguments.dart';
import '../../models/response/genre/genre_model.dart';

class MovieDetailsScreen extends GetView<MovieController> {
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as MovieArguments?;
    String image = '';
    if (args != null) {
      image = args.movie.backdropPath ?? '';
      controller.getMovieDetail(args.movie.id);
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15)),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.arrow_back,
                color: context.colors.primary.shade900,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          _buildBackdrop(context, image, args),
        ],
      ),
    );
  }

  SizedBox _buildBackdrop(
      BuildContext context, String image, MovieArguments? args) {
    final List<Genre> genres = controller.movieDetail.value.genres ?? [];
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.5,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: image.isEmpty
                  ? const AssetImage(AssetImages.noImage)
                  : NetworkImage('https://image.tmdb.org/t/p/w1280$image')
              as ImageProvider,
              fit: BoxFit.cover,
              onError: (exception, stackTrace) {
                Get.snackbar('Error', exception.toString());
              },
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      args?.movie.title ?? 'N/A',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      args?.movie.releaseDate ?? 'N/A',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        ...List.generate(genres.length, (index) =>
                        Padding(
                          padding: AppPaddings.sH,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: context.colors.primary,
                            ),
                            child: Text(
                              genres.isNotEmpty ? genres[index].name : 'N/A',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
