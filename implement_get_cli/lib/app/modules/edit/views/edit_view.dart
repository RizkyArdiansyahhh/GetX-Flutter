import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:implement_get_cli/app/modules/home/controllers/home_controller.dart';
import '../controllers/edit_controller.dart';

class EditView extends GetView<EditController> {
  final HomeController homeController = Get.find<HomeController>();
  EditView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EditView'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: controller.nameEditController,
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "your product name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  homeController.edit(
                    Get.arguments,
                    controller.nameEditController.text,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Edit",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
