import 'package:get/get.dart';

class HomeController extends GetxController {
  String name = '';
  RxInt index = 0.obs;

  void increment() {
    index.value++;
    // This is used to update the UI
    // update();
  }

  void displayName() {
    name = 'Jorge';
    update();
  }
}
