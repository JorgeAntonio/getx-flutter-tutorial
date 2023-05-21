import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/src/views/first_page.dart';
import 'package:getxtutorial/src/views/pages/home_page.dart';
import 'package:getxtutorial/src/views/second_page.dart';

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
            page: () => const HomePage(),
            transition: Transition.rightToLeft),
        GetPage(
            name: '/firstpage',
            page: () => const FirstPage(),
            transition: Transition.zoom),
        GetPage(
            name: '/secondpage',
            page: () => const SecondPage(),
            transition: Transition.upToDown),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
