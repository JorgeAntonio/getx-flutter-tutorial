import 'package:get/get.dart';

class SecondController extends GetxController {
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

  @override
  void onInit() {
    // when you open the screen
    print('onInit 2');
    super.onInit();
  }

  @override
  void onReady() {
    // when the controller is created
    print('onReady 2');
    super.onReady();
  }

  @override
  void onClose() {
    // when the controller is closed
    print('onClose 2');
    super.onClose();
  }

}
