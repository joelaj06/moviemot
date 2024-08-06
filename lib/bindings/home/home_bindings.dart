
import 'package:get/get.dart';
import 'package:movie_mot/controllers/home/home_controller.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }

}