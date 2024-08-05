import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';
class MovieMot extends StatelessWidget {
  const MovieMot({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (  BuildContext context,
          Widget? child,) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Movie Mot',
          getPages: Pages.pages,
          initialRoute:  AppRoutes.base
      ),
    );
  }
}
