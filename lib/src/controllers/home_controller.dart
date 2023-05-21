import 'package:get/get.dart';

class HomeController extends GetxController {
  String name = 'jorge';
  RxInt index = 0.obs;

  void increment() {
    index.value++;
  }
}
