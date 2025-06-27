import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:learn_dynamic_link/pages/all_product_page.dart';
import 'package:learn_dynamic_link/pages/detail_product_page.dart';
import 'package:learn_dynamic_link/pages/home_page.dart';
import 'package:learn_dynamic_link/routes/app_pages.dart';
import 'package:learn_dynamic_link/routes/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.home,
      getPages: AppPages.pages,
    );
  }
}
