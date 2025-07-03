import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getx_connect/controllers/usersC.dart';
import 'package:getx_connect/routes/app_routes.dart';

class HomePage extends StatelessWidget {
  final Usersc userC = Get.find<Usersc>();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar User")),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search user",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.add);
                    },
                    icon: Icon(Icons.person_add),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  itemCount: userC.users.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(Icons.face, size: 36),
                      title: Text(userC.users[index].name),
                      subtitle: Text(userC.users[index].email),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete),
                      ),
                      onTap: () {
                        Get.toNamed(AppRoutes.profile);
                      },
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
