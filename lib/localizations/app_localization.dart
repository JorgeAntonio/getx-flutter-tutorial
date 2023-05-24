import 'package:get/get.dart';
import 'package:getxtutorial/localizations/languages/ar.dart';
import 'package:getxtutorial/localizations/languages/en.dart';
import 'package:getxtutorial/localizations/languages/es.dart';
import 'package:getxtutorial/localizations/languages/fr.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "es": es,
        "en": en,
        "ar": ar,
        "fr": fr,
      };
}
