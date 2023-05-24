import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getxtutorial/src/models/news_model.dart';
import 'package:getxtutorial/src/services/news_service.dart';

class HomeController extends GetxController {
  String name = '';
  RxInt index = 0.obs;

  GetStorage box = GetStorage();

  get list => null;

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
    getNewsData();
    // when you open the screen
    print('onInit');
    super.onInit();
  }

  NewsApi? newsApi;
  void getNewsData() async {
    newsApi = await NewsService().getNewsData();
    // set update if it's necessary
    update();
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
