import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_state_manager/controllers/counter_controller.dart';
import 'package:learn_state_manager/home_page.dart';
import 'package:learn_state_manager/unique_id_page.dart';
import 'package:learn_state_manager/user_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final CounterController counterC = Get.put(CounterController());
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        home: UniqueIdPage(),
        theme: (counterC.isDarkTheme.value)
            ? ThemeData.dark()
            : ThemeData.light(),
      ),
    );
  }
}
