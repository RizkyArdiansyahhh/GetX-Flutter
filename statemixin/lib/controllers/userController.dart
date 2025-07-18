import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:statemixin/models/user.dart';

class Usercontroller extends GetxController with StateMixin<List<User>> {
  final url = "https://reqres.in/api/users?page=2";
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchUsers();
  }

  void fetchUsers() async {
    change(null, status: RxStatus.loading());
    await Future.delayed(Duration(seconds: 4));
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        final List<User> users = User.fromListJson(responseBody["data"]);
        change(users, status: RxStatus.success());
      }
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    } finally {}
  }
}
