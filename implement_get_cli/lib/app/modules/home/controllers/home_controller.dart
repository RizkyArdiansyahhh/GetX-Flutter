import 'package:get/get.dart';
import 'package:implement_get_cli/app/data/models/product_model.dart';
import 'package:implement_get_cli/app/data/providers/product_provider.dart';
import 'package:implement_get_cli/app/routes/app_pages.dart';

class HomeController extends GetxController {
  var products = List<Product>.empty().obs;

  void showSnackbar(String title, String message) {
    Get.snackbar(title, message, duration: Duration(milliseconds: 1000));
  }

  Product searchProductById(String id) {
    return products.firstWhere((product) => product.id == id);
  }

  Future<void> add(String name) async {
    if (name.trim().isEmpty) {
      showSnackbar("Failed", "Product name can't be empty");
    } else {
      final date = DateTime.now().toString();
      final Product product = Product(id: "", name: name, createAt: date);
      try {
        await ProductProvider().postProduct(product).then((value) {
          if (value != null) {
            products.add(Product(id: value, name: name, createAt: date));
          }
        });
        showSnackbar("Success", "Product successfully added");
      } catch (e) {
        showSnackbar("Error", "Failed to add product: $e");
      }
    }
  }

  void delete(String id) {
    Get.defaultDialog(
      title: "Confirm",
      middleText: "Are you sure you want to delete this product?",
      textConfirm: "Yes",
      textCancel: "Cancel",
      onConfirm: () async {
        try {
          await ProductProvider().deleteProduct(id);
          products.removeWhere((product) => product.id == id);
          Get.back();
          showSnackbar("Success", "Product successfully deleted ");
        } catch (e) {
          print(e);
        }
      },
    );
  }

  void edit(String id, String name) {
    final product = searchProductById(id);

    if (name.trim().isEmpty) {
      showSnackbar("Failed", "Product name can't be empty");
      return;
    } else if (name == product.name) {
      showSnackbar("Info", "No changes detected");
      return;
    }
    ProductProvider().editProduct(id, name);
    product.name = name;
    showSnackbar("Success", "Product updated successfully");
    products.refresh();
  }

  @override
  void onInit() async {
    super.onInit();
    try {
      final Map<String, dynamic> data = await ProductProvider().getProduct();
      final List<Product> productJson = data.entries
          .map((product) => Product.fromJson(product.key, product.value))
          .toList();
      products.addAll(productJson);
    } catch (e) {
      print(e);
    }
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
