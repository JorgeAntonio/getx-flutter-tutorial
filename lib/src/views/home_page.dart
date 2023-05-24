import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getxtutorial/src/controllers/home_controller.dart';
import 'package:getxtutorial/src/controllers/second_controller.dart';
import 'package:getxtutorial/src/views/first_page.dart';
import 'package:getxtutorial/src/views/second_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final SecondController controller = Get.find();
  final HomeController controller2 = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'.tr),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                Get.toNamed('/firstpage');
              },
              child: const Text('Next')),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Getx Tutorial'.tr,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const FirstPage());
              },
              child: Text('First Page'.tr),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => SecondPage());
              },
              child: Text('Second Page'.tr),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                GetStorage box = GetStorage();

                if (Get.locale == const Locale("en")) {
                  Get.updateLocale(const Locale("fr"));
                  box.write("lang", "fr");
                } else {
                  Get.updateLocale(const Locale("en"));
                  box.write("lang", "en");
                }
              },
              child: Text("Language".tr),
            ),
          ],
        ),
      ),
    );
  }
}
