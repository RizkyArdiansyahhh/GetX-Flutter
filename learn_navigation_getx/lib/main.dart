import 'package:flutter/material.dart';
import 'package:learn_navigation_getx/pages/page_satu.dart';
import 'package:get/get.dart';
import 'package:learn_navigation_getx/routes/app_routes.dart';
import './routes/app_pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: PageSatu(),
      initialRoute: AppRoutes.home,
      getPages: AppPages.pages,
    );
  }
}
