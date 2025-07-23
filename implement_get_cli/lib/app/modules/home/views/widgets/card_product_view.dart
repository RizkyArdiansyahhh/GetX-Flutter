import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:implement_get_cli/app/data/models/product_model.dart';
import 'package:implement_get_cli/app/modules/home/controllers/home_controller.dart';
import 'package:implement_get_cli/app/routes/app_pages.dart';

class CardProductView extends StatelessWidget {
  final Product product;
  final HomeController homeController;
  const CardProductView({
    super.key,
    required this.product,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Get.toNamed(Routes.EDIT, arguments: product.id),
      leading: CircleAvatar(backgroundColor: Colors.lightBlueAccent),
      title: Text(product.name!, style: TextStyle(fontWeight: FontWeight.w700)),
      subtitle: Text(product.createAt!),
      trailing: IconButton(
        onPressed: () {
          homeController.delete(product.id.toString());
        },
        icon: Icon(Icons.delete),
        color: Colors.red,
      ),
    );
  }
}
