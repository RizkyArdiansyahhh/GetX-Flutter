import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:implement_get_cli/app/data/models/product_model.dart';

class CardProductView extends StatelessWidget {
  final Product product;
  const CardProductView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundColor: Colors.lightBlueAccent),
      title: Text(product.name!, style: TextStyle(fontWeight: FontWeight.w700)),
      subtitle: Text(product.createAt!),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.delete),
        color: Colors.red,
      ),
    );
  }
}
