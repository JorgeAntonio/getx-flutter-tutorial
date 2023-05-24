import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<HomeController>(
          builder: (controller) {
            if (controller.newsApi != null) {
              return ListView.builder(
                itemCount: controller.newsApi!.articles.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    leading: Image(
                      image: NetworkImage(
                        controller.newsApi!.articles[index].urlToImage
                            .toString(),
                      ),
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      controller.newsApi!.articles[index].title,
                      maxLines: 2,
                    ),
                    subtitle: Text(
                      controller.newsApi!.articles[index].description,
                      maxLines: 1,
                    ),
                  ),
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
