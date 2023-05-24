import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/component.dart';
import 'package:getxtutorial/src/controllers/home_controller.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'.tr),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
              builder: (controller) => Text(
                controller.name.tr,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                CustomText(text: 'Hello'.tr),
                const SizedBox(
                  height: 20,
                ),
                CustomText(text: "French".tr),
                const SizedBox(
                  height: 20,
                ),
                CustomText(text: "English".tr),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.getTheSavedName();
              },
              child: const Text('get name'),
            ),
            ElevatedButton(
              onPressed: () {
                controller.deleteSavedName();
              },
              child: const Text('delete name'),
            ),
            ElevatedButton(
              onPressed: () {
                controller.displayName();
              },
              child: const Text('display name'),
            ),
          ],
        ),
      ),
    );
  }
}
