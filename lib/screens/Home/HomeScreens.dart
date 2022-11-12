import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spot_light/Controllers/mainController.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

class MainhomeScreen extends StatelessWidget {
  MainhomeScreen({super.key});
  var controller = Get.put(MainController());

  List screenList = [
    Container(
      child: Center(child: "Home".text.bold.color(Vx.white).size(52).make()),
    ),
    Container(
      child: Center(child: "Explore".text.bold.color(Vx.white).size(52).make()),
    ),
    Container(
      child: Center(child: "Places".text.bold.color(Vx.white).size(52).make()),
    ),
    Container(
      child:
          Center(child: "Settings".text.bold.color(Vx.white).size(52).make()),
    )
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
                child: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.home,
                    size: 20.0,
                  ),
                ),
              ),
              label: 'Home',
              backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  controller.increasefunc(1);
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.search,
                    size: 20.0,
                  ),
                ),
              ),
              label: 'Explore',
              backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  controller.increasefunc(2);
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.location_history,
                    size: 20.0,
                  ),
                ),
              ),
              label: 'Places',
              backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  controller.increasefunc(3);
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.settings,
                    size: 20.0,
                  ),
                ),
              ),
              label: 'Settings',
              backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            ),
          ],
        );
      }),
    );
  }
}
