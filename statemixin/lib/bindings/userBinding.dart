import 'package:get/get.dart';
import 'package:statemixin/controllers/userController.dart';

class Userbinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Usercontroller());
  }
}
