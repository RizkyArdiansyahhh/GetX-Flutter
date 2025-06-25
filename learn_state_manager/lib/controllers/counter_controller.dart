import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  var isDarkTheme = false.obs;

  void increment() => count++;
  void changeDarkTheme() => isDarkTheme.value = !isDarkTheme.value;
}
