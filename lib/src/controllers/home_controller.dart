import 'package:get/get.dart';

class HomeController extends GetxController {
  String name = 'jorge';
  int index = 0;

  void increment() {
    index++;
    // This is used to update the UI
    update();
  }
}
