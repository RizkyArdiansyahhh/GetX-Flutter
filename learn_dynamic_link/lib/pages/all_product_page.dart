import 'package:flutter/cupertino.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: ListView(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              );
            },
          );
          // Get.bottomSheet(
          //   Container(
          //     padding: EdgeInsets.all(10),
          //     color: Colors.white,
          //     child: ListView(
          //       children: [
          //         TextField(
          //           decoration: InputDecoration(border: OutlineInputBorder()),
          //         ),
          //         SizedBox(height: 10),
          //         TextField(
          //           decoration: InputDecoration(border: OutlineInputBorder()),
          //         ),
          //         SizedBox(height: 10),
          //         TextField(
          //           decoration: InputDecoration(border: OutlineInputBorder()),
          //         ),
          //         SizedBox(height: 10),
          //         TextField(
          //           decoration: InputDecoration(border: OutlineInputBorder()),
          //         ),
          //         SizedBox(height: 10),
          //       ],
          //     ),
          //   ),
          // );
        },
        backgroundColor: Colors.cyan,
      ),
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
      // bottomSheet: Container(
      //   height: 400,
      //   color: Colors.orange,
      //   child: Center(child: Text("Ini bottom sheet")),
      // ),
    );
  }
}
