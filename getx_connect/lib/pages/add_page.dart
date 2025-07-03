import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:getx_connect/controllers/usersC.dart';

class AddPage extends StatelessWidget {
  final TextEditingController textEditingControllerName =
      TextEditingController();
  final TextEditingController textEditingControllerEmail =
      TextEditingController();
  final TextEditingController textEditingControllerPhone =
      TextEditingController();
  final Usersc userC = Get.find<Usersc>();
  AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add User")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            TextField(
              controller: textEditingControllerName,
              decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 13),
            TextField(
              controller: textEditingControllerEmail,
              decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 13),
            TextField(
              controller: textEditingControllerPhone,
              decoration: InputDecoration(
                hintText: "Phone",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 13),
            ElevatedButton(
              onPressed: () {
                userC.add(
                  textEditingControllerName.text,
                  textEditingControllerEmail.text,
                  textEditingControllerPhone.text,
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              child: Text(
                "Create",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
