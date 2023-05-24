import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getxtutorial/localizations/app_localization.dart';
import 'package:getxtutorial/src/home_bindig.dart';
import 'package:getxtutorial/src/views/pages/first_page.dart';
import 'package:getxtutorial/src/views/pages/home_page.dart';
import 'package:getxtutorial/src/views/pages/second_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HomeBinding().dependencies();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  GetStorage box = GetStorage();

  @override
  Widget build(BuildContext context) {
    print(box.read("lang"));

    return GetMaterialApp(
      initialRoute: '/',
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
            name: '/',
            page: () => HomePage(),
            transition: Transition.rightToLeft),
        GetPage(
            name: '/firstpage',
            page: () => const FirstPage(),
            transition: Transition.rightToLeft),
        GetPage(
            name: '/firstpage',
            page: () => SecondPage(),
            transition: Transition.rightToLeft)
      ],
      //localization | English => en | Turkish => tr | Arabic => ar | Spanish => es
      locale: (box.read("lang") == null)
          ? const Locale('en')
          : Locale(box.read("lang")),
      translations: AppLocalization(),
      initialBinding: HomeBinding(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
