import 'package:get/get.dart';
import 'package:statemixin/bindings/userBinding.dart';
import 'package:statemixin/pages/detailUser_page.dart';
import 'package:statemixin/pages/home_page.dart';
import 'package:statemixin/pages/users_page.dart';
import 'package:statemixin/routes/app_pages.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: AppPages.home, page: () => HomePage()),
    GetPage(
      name: AppPages.users,
      page: () => UsersPage(),
      binding: Userbinding(),
    ),
    GetPage(name: AppPages.detailUser, page: () => DetailuserPage()),
  ];
}
