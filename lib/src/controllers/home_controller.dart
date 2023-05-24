import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  String name = '';
  RxInt index = 0.obs;

  GetStorage box = GetStorage();

  void increment() {
    index.value++;
    // This is used to update the UI
    // update();
  }

  void displayName() {
    name = 'Jorge';
    //This is used to save the data
    box.write('name', name);
    update();
  }

  void getTheSavedName() {
    String name = box.read("name") ?? "Deleted";
    print(name);
    update();
  }

  void deleteSavedName() {
    box.remove("name");
    print('It is removed');
    update();
  }

  @override
  void onInit() {
    // when you open the screen
    print('onInit');
    super.onInit();
  }

  @override
  void onReady() {
    // when the controller is created
    print('onReady');
    super.onReady();
  }

  @override
  void onClose() {
    // when the controller is closed
    print('onClose');
    super.onClose();
  }
}
