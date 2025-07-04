import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_connect/models/user.dart';
import 'package:getx_connect/providers/users_provider.dart';

class Usersc extends GetxController {
  var users = List<User>.empty().obs;

  void showSnackbar(String title, message) {
    Get.snackbar(title, message, duration: Duration(seconds: 2));
  }

  User searchUserById(id) {
    return users.firstWhere((user) => user.id == id);
  }

  void add(String name, String email, String phone) {
    final inputName = name.trim();
    final inputEmail = email.trim();
    final inputPhone = phone.trim();
    if (inputName.isNotEmpty &&
        inputEmail.isNotEmpty &&
        inputPhone.isNotEmpty) {
      if (inputEmail.contains("@")) {
        UsersProvider().addUser(name, email, phone).then((value) {
          users.add(
            User(
              id: value.body["name"],
              name: name,
              email: email,
              phone: phone,
            ),
          );
        });

        Get.back();
      } else {
        showSnackbar("Error", "Email Tidak Valid");
      }
    } else {
      showSnackbar("Error", "Kolom Inputan Tidak Boleh Kosong");
    }
  }

  void deleted(id) {
    Get.defaultDialog(
      title: "DELETE",
      middleText: "Apakah anda yakin menghapus ini?",
      textConfirm: "Yes",
      textCancel: "Cancel",
      onConfirm: () {
        UsersProvider().deleteUser(id).then((value) {
          users.removeWhere((user) => user.id == id);
        });
        // users.removeWhere((user) => user.id == id);
        Get.back();
        showSnackbar("Berhasil", "User Berhasil Dihapus");
      },
    );
  }

  void edit(String id, String name, String email, String phone) {
    if (name.trim().isNotEmpty &&
        email.trim().isNotEmpty &&
        phone.trim().isNotEmpty) {
      if (email.trim().contains("@")) {
        UsersProvider().editUser(id, name, email, phone).then((value) {
          final index = users.indexWhere((user) => user.id == id);

          users[index] = User(id: id, name: name, email: email, phone: phone);
          users.refresh();
        });
        Get.back();
        showSnackbar("Success", "Profile Berhasil Diubah");
      }
    }
  }
}
