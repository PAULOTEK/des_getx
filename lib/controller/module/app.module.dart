import 'package:get/get.dart';
import 'package:project_getex/view/dashboard/dashboard_binding.dart';
import 'package:project_getex/view/dashboard/dashboard_page.dart';

import 'routes/app_routes.dart';

class AppModule {
  static var list = [
    GetPage(
      name: AppRoutes.initalRoute,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
