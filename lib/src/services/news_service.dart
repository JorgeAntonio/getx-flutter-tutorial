import 'package:get/get.dart';
import 'package:getxtutorial/src/models/news_model.dart';

class NewsService extends GetConnect implements GetxService {
  Future<NewsApi> getNewsData() async {
    var response = await get(
        'https://newsapi.org/v2/everything?q=tesla&from=2023-04-24&sortBy=publishedAt&apiKey=139b5cec42724cb1ba7c56f9f28b3bea');

    return NewsApi.fromJson(response.body);
  }

  void postData() {
    post('url', {});
  }

  void putData() {
    put('url', {});
  }

  void deleteData() {
    delete('url');
  }
}
