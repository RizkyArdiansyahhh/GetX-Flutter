import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_cli/app/controllers/auth_controller.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final AuthController authController = Get.find<AuthController>();
  ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ProfileView'), centerTitle: true),
      body: const Center(
        child: Text('ProfileView is working', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
