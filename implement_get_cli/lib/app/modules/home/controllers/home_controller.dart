import 'package:get/get.dart';
import 'package:implement_get_cli/app/data/models/product_model.dart';
import 'package:implement_get_cli/app/routes/app_pages.dart';

class HomeController extends GetxController {
  var products = List<Product>.empty().obs;

  void showSnackbar(String title, String message) {
    Get.snackbar(title, message);
  }

  Product searchProductById(String id) {
    return products.firstWhere((product) => product.id == id);
  }

  void add(String name) {
    if (name.trim().isEmpty) {
      showSnackbar("Failed", "Product name can't be empty");
    } else {
      final date = DateTime.now().toString();
      products.add(Product(id: date, name: name, createAt: date));
      showSnackbar("Success", "Products success to add");
      Future.delayed(Duration(milliseconds: 300), () {
        Get.offAllNamed(Routes.HOME);
      });
    }
  }

  void delete(String id) {
    Get.defaultDialog(
      title: "Confirm",
      middleText: "Are you sure you want to delete this product?",
      textConfirm: "Yes",
      textCancel: "Cancel",
      onConfirm: () {
        products.removeWhere((product) => product.id == id);
        Get.back();
        showSnackbar("Success", "Product successfully deleted ");
      },
    );
  }

  void edit(String id, String name) {
    if (name.trim().isEmpty) {
      showSnackbar("Failed", "Product name can't be empty");
      return;
    }
    final product = searchProductById(id);
    product.name = name;
    products.refresh();
  }

  @override
  void onInit() {
    super.onInit();
    products.add(
      Product(
        id: DateTime.now().toString(),
        name: "Product 1",
        createAt: DateTime.now().toString(),
      ),
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
