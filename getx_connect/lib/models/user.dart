class User {
  final String id;
  final String name;
  final String email;
  final String phone;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  factory User.fromJson(Map<String, dynamic> dataJson) {
    return User(
      id: dataJson["id"],
      name: dataJson["name"],
      email: dataJson["email"],
      phone: dataJson["phone"],
    );
  }
}
