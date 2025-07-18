import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemixin/routes/app_pages.dart';
import 'package:statemixin/routes/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPages.home,
      getPages: AppRoutes.pages,
    );
  }
}
