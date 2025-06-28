import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataController extends GetxController {
  var count = 0.obs;

  Future<void> setCount() async {
    final sharedP = await SharedPreferences.getInstance();
    await sharedP.setInt("counter", 121);

    count.value = sharedP.getInt("counter")!.toInt();
  }
}
