import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_state_manager/controllers/user_controller.dart';
import 'package:learn_state_manager/models/user.dart';

class UserPage extends StatelessWidget {
  UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    log("rebuild");
    return Scaffold(
      appBar: AppBar(title: Text("GetX")),
      body: Center(
        child: GetX<UserController>(
          builder: (controler) {
            return Text(
              "Nama Saya ${controler.userRizky.value.name}",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            );
          },
        ),
        // child: Obx(() {
        //   return Text(
        //     "Nama Saya ${userC.userRizky.value.name}",
        //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        //   );
        // }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<UserController>().changeNameToUpperCase();
        },
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
