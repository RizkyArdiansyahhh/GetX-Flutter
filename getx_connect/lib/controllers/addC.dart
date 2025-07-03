import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Addc extends GetxController {
  late TextEditingController nameC;
  late TextEditingController emailC;
  late TextEditingController phoneC;

  @override
  void onInit() {
    super.onInit();
    nameC = TextEditingController();
    emailC = TextEditingController();
    phoneC = TextEditingController();
  }

  @override
  void onClose() {
    nameC.dispose();
    emailC.dispose();
    phoneC.dispose();
    super.onClose();
  }
}
