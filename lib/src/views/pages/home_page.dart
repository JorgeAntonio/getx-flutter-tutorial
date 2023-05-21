import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/src/controllers/home_controller.dart';
// import 'package:getxtutorial/src/views/first_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            child: const Text('Next')
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<HomeController>(
              init: HomeController(),
              builder: (controller) {
                return Column(
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
