import 'package:dependencies_getx/data_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home page"),
            OutlinedButton(
              onPressed: () {
                Get.to(() => DataPage());
              },
              child: Text("Next Page"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.changeTheme(
            (Get.isDarkMode) ? ThemeData.light() : ThemeData.dark(),
          );
        },
        backgroundColor: Colors.pink,
      ),
    );
  }
}
