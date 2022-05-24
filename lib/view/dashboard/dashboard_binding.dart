import 'package:get/get.dart';
import 'package:project_getex/controller/home_controller.dart';
import 'package:project_getex/controller/posts_controller.dart';
import '../../controller/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<PostsController>(() => PostsController());
  }
}
