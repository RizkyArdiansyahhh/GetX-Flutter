import 'package:get/route_manager.dart';
import 'package:learn_navigation_getx/pages/page_dua.dart';
import 'package:learn_navigation_getx/pages/page_empat.dart';
import 'package:learn_navigation_getx/pages/page_satu.dart';
import 'package:learn_navigation_getx/pages/page_tiga.dart';
import 'package:learn_navigation_getx/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.home, page: () => PageSatu()),
    GetPage(name: AppRoutes.page2, page: () => PageDua()),
    GetPage(name: AppRoutes.page3, page: () => PageTiga()),
    GetPage(name: AppRoutes.page4, page: () => PageEmpat()),
  ];
}
