import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/src/controllers/home_controller.dart';
import 'package:getxtutorial/src/views/pages/first_page.dart';
import 'package:getxtutorial/src/views/pages/second_page.dart';
// import 'package:getxtutorial/src/views/first_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  /*

    Getx like Obx => Like Streaming
    - Listen to the changes of the state time to time.

    GetBuilder:
    - It is used only ONE TIME to rebuild the UI or a rebuild a WIDGET when the state changes.
  
  */

  final controller = Get.lazyPut(() => HomeController());
  final controller1 = Get.put(() => HomeController());

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
