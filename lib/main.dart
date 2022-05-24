import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_getex/controller/module/app.module.dart';
import 'package:project_getex/controller/module/routes/app_routes.dart';
import 'package:project_getex/utils/themes/app_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.initalRoute,
      getPages: AppModule.list,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}
