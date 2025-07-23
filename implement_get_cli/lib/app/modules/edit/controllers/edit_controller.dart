import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:implement_get_cli/app/data/models/product_model.dart';
import 'package:implement_get_cli/app/modules/home/controllers/home_controller.dart';

class EditController extends GetxController {
  late TextEditingController nameEditController;
  final HomeController homeController = Get.find<HomeController>();
  @override
  void onInit() {
    super.onInit();
    nameEditController = TextEditingController();
    final id = Get.arguments;
    final Product product = homeController.searchProductById(id);
    nameEditController.text = product.name!;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    nameEditController.dispose();
    super.onClose();
  }
}
