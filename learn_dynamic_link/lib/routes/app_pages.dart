import 'package:get/get.dart';
import 'package:learn_dynamic_link/pages/all_product_page.dart';
import 'package:learn_dynamic_link/pages/detail_product_page.dart';
import 'package:learn_dynamic_link/pages/home_page.dart';
import 'package:learn_dynamic_link/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.home, page: () => HomePage()),
    GetPage(name: AppRoutes.allProduct, page: () => AllProductPage()),
    GetPage(
      name: "${AppRoutes.detailProduct}/:id?",
      page: () => DetailProductPage(),
    ),
  ];
}
