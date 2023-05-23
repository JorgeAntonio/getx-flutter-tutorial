import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/src/home_bindig.dart';
import 'package:getxtutorial/src/views/pages/first_page.dart';
import 'package:getxtutorial/src/views/pages/home_page.dart';
import 'package:getxtutorial/src/views/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => HomePage(),
            transition: Transition.rightToLeft),
        GetPage(
            name: '/firstpage',
            page: () => FirstPage(),
            transition: Transition.rightToLeft),
        GetPage(
            name: '/firstpage',
            page: () => SecondPage(),
            transition: Transition.rightToLeft)
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialBinding: HomeBinding(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
