import 'package:get/get_instance/get_instance.dart';
import 'package:get/utils.dart';
import 'package:getx_connect/controllers/profileC.dart';

class Profileb implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => Profilec());
  }
}
