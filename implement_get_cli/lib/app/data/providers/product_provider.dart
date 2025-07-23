import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:implement_get_cli/app/data/models/product_model.dart';

class ProductProvider {
  final uri = Uri.parse(
    "https://get-cli-project-4c723-default-rtdb.asia-southeast1.firebasedatabase.app/products.json",
  );

  Future<void> postProduct(Product product) async {
    try {
      final response = await http.post(
        uri,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(product.toJson()),
      );
      if (response.statusCode == 200) {
        print("Product posted successfuly");
      } else {
        print("Failed to post product: ${response.statusCode}");
      }
    } catch (e) {
      print("Error posting product: $e");
    }
  }
}
