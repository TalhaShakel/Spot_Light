import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  @override
  var count = 0;
  increasefunc(index) {
    count = index;
    print(count);
    refresh();
  }
}
