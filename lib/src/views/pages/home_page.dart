import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/src/controllers/home_controller.dart';
import 'package:getxtutorial/src/views/pages/first_page.dart';
import 'package:getxtutorial/src/views/pages/second_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // final controller = Get.lazyPut(() => HomeController(), fenix: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
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
            const Text(
              'Getx Tutorial',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(() => FirstPage());
              },
              child: const Text('Go to First Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => SecondPage());
              },
              child: const Text('Go to Second Page'),
            ),
          ],
        ),
      ),
    );
  }
}
