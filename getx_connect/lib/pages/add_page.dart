import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:getx_connect/controllers/addC.dart';
import 'package:getx_connect/controllers/usersC.dart';

class AddPage extends StatelessWidget {
  final Usersc userC = Get.find<Usersc>();
  final Addc addC = Get.find<Addc>();
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
              controller: addC.nameC,
              decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 13),
            TextField(
              controller: addC.emailC,
              decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 13),
            TextField(
              controller: addC.phoneC,
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
                userC.add(addC.nameC.text, addC.emailC.text, addC.phoneC.text);
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
