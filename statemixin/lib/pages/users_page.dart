import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redacted/redacted.dart';
import 'package:statemixin/controllers/userController.dart';
import 'package:statemixin/widgets/cardUser_widget.dart';

class UsersPage extends StatelessWidget {
  final Usercontroller userC = Get.find<Usercontroller>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F7F8),
      appBar: AppBar(title: Text("Daftar User")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Daftar User",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "Lebih banyak",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: userC.obx(
                  (users) {
                    return ListView.builder(
                      itemCount: users!.length,
                      itemBuilder: (context, index) {
                        return CarduserWidget(
                          name: users[index].firstName.toString(),
                        );
                      },
                    );
                  },
                  onError: (error) => Center(child: Text(error!)),
                  onLoading: ListView.builder(
                    itemCount: 3, // jumlah dummy saat loading
                    itemBuilder: (context, index) => CarduserWidget(
                      name: "123", // kosong karena belum ada data
                    ).redacted(context: context, redact: true),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
