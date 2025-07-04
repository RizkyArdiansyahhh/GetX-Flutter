class User {
  String id;
  String? name;
  String? email;
  String? phone;

  User({required this.id, this.name, this.email, this.phone});

  factory User.fromJson(Map<String, dynamic> dataJson) {
    return User(
        id: dataJson["id"],
        name: dataJson["name"],
        email: dataJson["email"],
        phone: dataJson["phone"]);
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "email": email, "phone": phone};
  }
}
