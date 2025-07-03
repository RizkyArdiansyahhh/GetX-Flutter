import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_connect/controllers/usersC.dart';
import 'routes/app_page.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final Usersc userC = Get.put(Usersc());
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.home,
      getPages: AppPage.pages,
    );
  }
}
