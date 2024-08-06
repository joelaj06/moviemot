
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_mot/constants/app_assets_images.dart';
import 'package:movie_mot/constants/app_padding.dart';
import 'package:movie_mot/constants/app_spacing.dart';
import 'package:movie_mot/controllers/home/home_controller.dart';
import 'package:movie_mot/core/themes/app_theme.dart';
import 'package:movie_mot/core/themes/hint_color.dart';
import 'package:movie_mot/core/themes/theme.dart';

import '../../core/widgets/app_text_input_field.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('Hello, 👋'),
          actions: [
            Padding(
              padding: AppPaddings.mH,
              child: Container(
                padding: AppPaddings.mA,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5.0,
                        offset: Offset(0.0, 5.0),
                      )
                    ]),
                child: const Icon(Icons.person),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: AppPaddings.mA,
                child: const Text(
                  'Millions of Movies, TV shows to explore now.',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const AppSpacing(
                v: 10,
              ),
              Padding(
                padding: AppPaddings.mA,
                child: AppTextInputField(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: HintColor.color,
                  ),
                  // onChanged: controller.onSearchQueryFieldInputChanged,
                  //  onFieldSubmitted: controller.onSearchQueryFieldSubmit,
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
              _buildMovieHeader(context,
                  title: 'What\'s Popular', actionTitle: 'Streaming'),
              _buildPopularMovieList(context),
              const AppSpacing(
                v: 10,
              ),
              _buildMovieHeader(context,
                  title: 'Free to watch', actionTitle: 'Movie'),
              _buildPopularMovieList(context),
            ],
          ),
        ));
  }

  Widget _buildMovieHeader(BuildContext context,
      {required String title, required String actionTitle}) {
    return Padding(
      padding: AppPaddings.mA,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
          ),
          Container(
            padding: AppPaddings.mA,
            decoration: BoxDecoration(
                color: context.colors.primary.shade200,
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                Text(actionTitle),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.redAccent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPopularMovieList(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: SizedBox(
                    height: 40,
                    width: 40,
                    child: CircularProgressIndicator.adaptive()),
              )
            : ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return _buildPopularMovieCard(context);
                }),
      ),
    );
  }

  Widget _buildPopularMovieCard(BuildContext context) {
    return Padding(
      padding: AppPaddings.sA,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // border: Border.all(color: context.colors.primary, width: 2),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    AssetImages.blade,
                    width: 190,
                    height: double.infinity,
                    fit: BoxFit.cover,
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
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Blade 2',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              Text(
                '19/05/2000',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}
