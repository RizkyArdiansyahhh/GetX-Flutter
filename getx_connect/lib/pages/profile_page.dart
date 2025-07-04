import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_connect/controllers/profileC.dart';
import 'package:getx_connect/controllers/usersC.dart';
import 'package:getx_connect/models/user.dart';

class ProfilePage extends StatelessWidget {
  final Usersc usersC = Get.find<Usersc>();
  var userId = Get.arguments;

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final User user = usersC.searchUserById(userId);
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.face, size: 100)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  final Profilec profileC = Get.find<Profilec>();
                  profileC.nameC.text = user.name!;
                  profileC.emailC.text = user.email!;
                  profileC.phoneC.text = user.phone!;
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 18,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Edit Profile",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 20),
                            Expanded(
                              child: ListView(
                                children: [
                                  TextField(
                                    controller: profileC.nameC,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  TextField(
                                    controller: profileC.emailC,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  TextField(
                                    controller: profileC.phoneC,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  ElevatedButton(
                                    onPressed: () {
                                      usersC.edit(
                                        userId,
                                        profileC.nameC.text,
                                        profileC.emailC.text,
                                        profileC.phoneC.text,
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.pink,
                                      shape: ContinuousRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: Text(
                                      "Edit",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  backgroundColor: Colors.pink,
                ),
                child: Row(
                  children: [
                    Icon(Icons.edit, color: Colors.white),
                    Text("Edit Profile", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
          Obx(() {
            final user = usersC.searchUserById(userId);
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      user.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      user.email,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      user.phone,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
