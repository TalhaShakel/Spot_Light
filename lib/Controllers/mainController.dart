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

  // bool isSelected = false;
  String selectedSport = '';
  tabs(isSelected) {
    selectedSport = isSelected;
    refresh();
  }

  bool isAllMessage = true;
  isAllMessegeF(isAllMessage1) {
    isAllMessage = isAllMessage1;
    refresh();
  }

  var index = 0;
  followers(index1) {
    index = index1;
    refresh();
  }
}
