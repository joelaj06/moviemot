import 'package:get/get.dart';

import '../../screens/base/base_screen.dart';
import 'app_routes.dart';

class Pages {
  static final List<GetPage<AppRoutes>> pages = <GetPage<AppRoutes>>[
    GetPage<AppRoutes>(
      name: AppRoutes.base,
      page: () => const BaseScreen(),
      bindings: const <Bindings>[

      ]
    ),

  ];
}
