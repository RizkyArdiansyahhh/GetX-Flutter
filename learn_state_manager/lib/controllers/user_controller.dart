import 'dart:math';

import 'package:get/get.dart';
import 'package:learn_state_manager/models/user.dart';

class UserController extends GetxController {
  List<String> nameRandom = ["Jouse", "Budi", "Andre"];
  final userRizky = User(name: "Rizky", age: 21).obs;

  void changeNameToUpperCase() {
    userRizky.update((_) {
      int numberRandom = Random().nextInt(3);
      userRizky.value.name = nameRandom[numberRandom];
    });
  }
}
