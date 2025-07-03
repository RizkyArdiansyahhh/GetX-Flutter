import 'package:get/get.dart';
import 'package:getx_connect/models/user.dart';

class Usersc extends GetxController {
  var users = List<User>.empty().obs;

  void showSnackbar(String message) {
    Get.snackbar("Error", message, duration: Duration(seconds: 2));
  }

  void add(String name, String email, String phone) {
    var inputName = name.trim();
    var inputEmail = email.trim();
    var inputPhone = phone.trim();
    if (inputName.isNotEmpty &&
        inputEmail.isNotEmpty &&
        inputPhone.isNotEmpty) {
      if (inputEmail.contains("@")) {
        users.add(
          User(
            id: DateTime.now().toString(),
            name: inputName,
            email: inputEmail,
            phone: inputPhone,
          ),
        );
        print(users);
        Get.back();
      } else {
        showSnackbar("Email Tidak Valid");
      }
    } else {
      showSnackbar("Kolom Inputan Tidak Boleh Kosong");
    }
  }
}
