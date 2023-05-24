import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/src/controllers/home_controller.dart';
import 'package:getxtutorial/src/controllers/second_controller.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  final SecondController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'.tr),
        centerTitle: true,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [],
      ),
    );
  }
}
