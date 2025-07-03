import 'package:get/get.dart';
import 'package:getx_connect/bindings/addB.dart';
import 'package:getx_connect/controllers/usersC.dart';
import 'package:getx_connect/pages/add_page.dart';
import 'package:getx_connect/pages/home_page.dart';
import 'package:getx_connect/pages/profile_page.dart';
import 'package:getx_connect/routes/app_routes.dart';

class AppPage {
  static final pages = [
    GetPage(name: AppRoutes.home, page: () => HomePage()),
    GetPage(name: AppRoutes.add, page: () => AddPage(), binding: Addb()),
    GetPage(name: AppRoutes.profile, page: () => ProfilePage()),
  ];
}
