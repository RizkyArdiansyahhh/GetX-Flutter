import 'package:flutter/material.dart';
import 'package:learn_state_manager/controllers/counter_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final CounterController counterC = Get.find<CounterController>();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterC.changeDarkTheme();
        },
        backgroundColor: Colors.pink,
      ),
      appBar: AppBar(title: Text("GetX")),
      body: Center(
        child: Obx(() {
          return Text(
            "Number - ${counterC.count}",
            style: TextStyle(fontSize: 26),
          );
        }),
      ),
    );
  }
}
