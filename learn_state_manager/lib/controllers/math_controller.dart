import 'package:get/get.dart';

class MathController extends GetxController {
  var number = 5;
  void add() {
    number++;
    update(["add"]);
  }

  void less() {
    if (number != 0) {
      number--;
      update(["less"]);
    }
  }
}
