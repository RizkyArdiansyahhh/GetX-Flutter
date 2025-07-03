import 'package:get/instance_manager.dart';
import 'package:getx_connect/controllers/addC.dart';
import 'package:getx_connect/controllers/usersC.dart';

class Addb implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Addc());
  }
}
