import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List focusAreas = [];

  @override
  void onInit() {
    super.onInit();
    _loadJsonData();
  }

  void _loadJsonData() async {
    String jsonString = await rootBundle.loadString("assets/jsons/info.json");
    focusAreas = json.decode(jsonString);
    update();
  }
}
