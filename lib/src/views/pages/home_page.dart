import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/src/controllers/home_controller.dart';
// import 'package:getxtutorial/src/views/first_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  /*

    Getx like Obx => Like Streaming
    - Listen to the changes of the state time to time.

    GetBuilder:
    - It is used only ONE TIME to rebuild the UI or a rebuild a WIDGET when the state changes.
  
  */ 

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
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
            Obx(
              () => Column(
                children: [
                  Text(
                    controller.index.value.toString(),
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: const Text('Increment'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
