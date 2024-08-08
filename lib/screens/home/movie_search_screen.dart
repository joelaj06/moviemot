import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_mot/constants/app_spacing.dart';

import '../../constants/app_assets_images.dart';
import '../../constants/app_padding.dart';
import '../../controllers/home/home_controller.dart';
import '../../core/themes/hint_color.dart';
import '../../core/widgets/app_text_input_field.dart';
import '../../models/response/movie/movie_model.dart';

class MovieSearchScreen extends GetView<HomeController> {
  const MovieSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: AppPaddings.mA,
            child: AppTextInputField(
              prefixIcon: const Icon(
                Icons.search,
                color: HintColor.color,
              ),
              onChanged: controller.onSearchQueryFieldInputChanged,
              onFieldSubmitted: controller.onSearchQueryFieldSubmit,
              textInputType: TextInputType.text,
              hintText: 'Search for movies, tv show...',
              textColor: Colors.black,
              hintStyle: const TextStyle(
                color: HintColor.color,
              ),
            ),
          ),
          const AppSpacing(
            v: 10,
          ),
          Expanded(
            child: _buildSearchList(
                context,
                controller.searchedMovies,
              ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchList(BuildContext context, RxList<Movie> movies) {
    return SizedBox(
      child: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: SizedBox(
                    height: 40,
                    width: 40,
                    child: CircularProgressIndicator.adaptive()),
              )
            : controller.searchedMovies.isEmpty
                ? const Center(child: Text('No Results Found'))
                : GridView.builder(
                  //  shrinkWrap: true,
                    itemCount: movies.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Obx(
                          () => _buildMovieCard(context, movie: movies[index]));
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.2,
                      crossAxisCount: _calculateCrossAxisCount(context),
                    ),
                  ),
      ),
    );
  }

  // Helper function to calculate the number of columns based on the screen width
  int _calculateCrossAxisCount(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 600) {
      return 2;
    } else if (screenWidth < 900) {
      return 3;
    } else {
      return 4;
    }
  }

  Widget _buildMovieCard(BuildContext context, {Movie? movie}) {
    final poster = movie?.posterPath ?? '';
    return GestureDetector(
      onTap: () => controller.navigateToMovieDetailsScreen(movie!),
      child: Padding(
        padding: AppPaddings.sA,
        child: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                 // height: 500,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: poster.isEmpty
                            ? Image.asset(
                                AssetImages.noImage,
                                width: 190,
                                //height: double.infinity,
                                fit: BoxFit.cover,
                              )
                            : CachedNetworkImage(
                                fit: BoxFit.cover,
                                width: 190,
                               // height: 180,
                                imageUrl:
                                    'https://image.tmdb.org/t/p/w500$poster',
                                placeholder:
                                    (BuildContext context, String url) =>
                                        Image.asset(
                                  AssetImages.noImage,
                                ),
                                errorWidget: (BuildContext context, String url,
                                        dynamic error) =>
                                    const Icon(Icons.error),
                              ),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: GestureDetector(
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
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  movie?.title ?? 'N/A',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                Text(
                  movie?.releaseDate ?? 'N/A',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
