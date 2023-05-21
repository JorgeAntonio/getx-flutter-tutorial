import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getxtutorial/src/views/home_page.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Get.off remove the previous page from the stack
            // Get.off(()=>const HomePage());
            // Get.back go back to the previous page
            // Get.back();
            // Get.offAll remove all the previous pages from the stack
            // Get.offAll(()=>const HomePage());
            Get.offAllNamed('/');
          },
          child: const Text('Go to Home Page'),
        ),
      ),
    );
  }
}