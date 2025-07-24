import 'dart:convert';

import 'package:get/get_connect/connect.dart';
import 'package:http/http.dart' as http;
import 'package:implement_get_cli/app/data/models/product_model.dart';

class ProductProvider {
  Uri parseUri(String param) {
    return Uri.parse(
      "https://get-cli-project-4c723-default-rtdb.asia-southeast1.firebasedatabase.app/$param.json",
    );
  }

  Future<String?> postProduct(Product product) async {
    final Uri uri = parseUri("products");
    try {
      final response = await http.post(
        uri,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(product.toJson()),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print("Product posted successfuly");
        return data["name"];
      } else {
        print("Failed to post product: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      print("Error posting product: $e");
      return null;
    }
  }

  Future<void> deleteProduct(String id) async {
    final Uri uri = parseUri("products/$id");
    try {
      final response = await http.delete(uri);
      if (response.statusCode == 200) {
        print("Product deleted successfully");
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> editProduct(String id, String name) async {
    final Uri uri = parseUri("products/$id");

    try {
      final response = await http.patch(
        uri,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"name": name}),
      );

      if (response.statusCode == 200) {
        print("Product successfully edit");
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception(());
    }
  }

  Future getProduct() async {
    final Uri uri = parseUri("products");
    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final Map<String, dynamic> data = jsonDecode(response.body);
          return data;
        } else {
          return null;
        }
      } else {
        throw Exception();
      }
    } catch (e) {
      print(e.toString());
      throw Exception(e);
    }
  }
}
