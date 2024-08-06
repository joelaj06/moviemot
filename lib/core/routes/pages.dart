import 'package:get/get.dart';
import 'package:movie_mot/bindings/home/home_bindings.dart';
import 'package:movie_mot/screens/favorite/favorite_screen.dart';
import 'package:movie_mot/screens/home/home_screen.dart';
import 'package:movie_mot/screens/settings/settings_screen.dart';

import '../../screens/base/base_screen.dart';
import 'app_routes.dart';

class Pages {
  static final List<GetPage<AppRoutes>> pages = <GetPage<AppRoutes>>[
    GetPage<AppRoutes>(
        name: AppRoutes.base,
        page: () => const BaseScreen(),
        bindings: <Bindings>[
          HomeBindings(),
        ]),
    GetPage<AppRoutes>(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: HomeBindings(),
    ),
    GetPage<AppRoutes>(
      name: AppRoutes.favorite,
      page: () => const FavoriteScreen(),
    ),
    GetPage<AppRoutes>(
      name: AppRoutes.settings,
      page: () => const SettingsScreen(),
    ),
  ];
}
