import 'package:dependencies_getx/controllers/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';

class DataPage extends StatelessWidget {
  final DataController dataC = Get.put(DataController());
  DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data")),
      body: Center(
        child: Obx(() {
          return Text(
            "${dataC.count}",
            style: TextStyle(fontSize: 54, fontWeight: FontWeight.bold),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dataC.setCount();
        },
        backgroundColor: Colors.pink,
      ),
    );
  }
}
