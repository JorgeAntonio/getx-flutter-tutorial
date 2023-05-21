import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/src/controllers/home_controller.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});
  final HomeController controller = Get.put(HomeController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
              builder: (controller) => Text(
                controller.name,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.displayName();
              },
              child: const Text('Display name'),
            ),
          ],
        ),
      ),
    );
  }
}
