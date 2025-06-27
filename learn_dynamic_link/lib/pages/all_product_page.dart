import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_dynamic_link/products.dart';
import 'package:learn_dynamic_link/routes/app_routes.dart';

class AllProductPage extends StatelessWidget {
  const AllProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Products")),
      body: ListView.builder(
        itemCount: Products.products.length,
        itemBuilder: (context, index) {
          final product = Products.products[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                maximumSize: Size(MediaQuery.of(context).size.width * .5, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.cyan,
              ),
              onPressed: () {
                Get.toNamed(
                  "${AppRoutes.detailProduct}/${product["id"]}?name=${product["name"]}",
                );
              },
              child: Center(
                child: Text(
                  "${product["name"]}",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
