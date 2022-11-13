import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spot_light/Controllers/mainController.dart';
import 'package:spot_light/screens/Home/Explore.dart';
import 'package:spot_light/screens/Home/HomeSreen.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

class MainhomeScreen extends StatelessWidget {
  MainhomeScreen({super.key});
  var controller = Get.put(MainController());

  List screenList = [
    HomeScreen(),
    Center(child: "Explore".text.bold.color(Vx.white).size(52).make()),
    Center(child: "Places".text.bold.color(Vx.white).size(52).make()),
    Center(child: "Settings".text.bold.color(Vx.white).size(52).make()),
    ExploreScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: GetBuilder<MainController>(builder: (controller) {
        return screenList[controller.count];
      }),
      bottomNavigationBar: GetBuilder<MainController>(builder: (controller) {
        return BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          currentIndex: controller.count,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    controller.increasefunc(0);
                  },
                  child: Image.asset("assets/placeholder.png")),
              label: "",
              backgroundColor: Vx.black,
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    controller.increasefunc(1);
                  },
                  child: Image.asset("assets/Mask group-1.png")),
              label: "",
              backgroundColor: Vx.black,
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    controller.increasefunc(2);
                  },
                  child: Image.asset("assets/Group 514035.png")),
              label: "",
              backgroundColor: Vx.black,
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    controller.increasefunc(3);
                  },
                  child: Image.asset("assets/comment 1.png")),
              label: "",
              backgroundColor: Vx.black,
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    controller.increasefunc(4);
                  },
                  child: Image.asset("assets/Mask group.png")),
              label: "",
              backgroundColor: Vx.black,
            ),
          ],
        );
      }),
    );
  }
}
