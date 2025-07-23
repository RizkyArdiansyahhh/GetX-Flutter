import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:implement_get_cli/app/modules/home/views/widgets/card_product_view.dart';
import 'package:implement_get_cli/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Product'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(Routes.ADD),
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Obx(() {
        return SafeArea(
          child: controller.products.isNotEmpty
              ? ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    final product = controller.products[index];
                    return CardProductView(
                      product: product,
                      homeController: controller,
                    );
                  },
                )
              : Center(child: Text("Data Not Found")),
        );
      }),
    );
  }
}
