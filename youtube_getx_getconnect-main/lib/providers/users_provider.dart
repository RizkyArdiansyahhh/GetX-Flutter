import 'package:get/get.dart';

class UsersProvider extends GetConnect {
  final url =
      "https://get-connect-project-436ea-default-rtdb.asia-southeast1.firebasedatabase.app";

  Future<Response> addUser(String name, String email, String phone) {
    return post(url, {"name": name, "email": email, "phone": phone});
  }
}
