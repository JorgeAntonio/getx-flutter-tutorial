import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getxtutorial/src/views/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Get.to(()=>const SecondPage());
            Get.toNamed('/secondpage');
          },
          child: const Text('Go to Second Page'),
        ),
      ),
    );
  }
}