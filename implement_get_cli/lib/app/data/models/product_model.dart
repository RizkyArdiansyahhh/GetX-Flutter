class Product {
  String? id;
  String? name;
  String? createAt;

  Product({this.id, this.name, this.createAt});

  Product.fromJson(String id, Map<String, dynamic> json) {
    id = id;
    name = json['name'];
    createAt = json['createAt'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['createAt'] = createAt;
    return data;
  }
}
