import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spot_light/Controllers/mainController.dart';
import 'package:spot_light/screens/Home/Chat/ChatHomeScreen.dart';
import 'package:spot_light/screens/Home/Chat/Communities.dart';
import 'package:spot_light/screens/Home/Explore.dart';
import 'package:spot_light/screens/Home/HomeSreen.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Notification.dart';

class MainhomeScreen extends StatelessWidget {
  MainhomeScreen({super.key});
  var controller = Get.put(MainController());

  List screenList = [
    HomeScreen(),
    NotificationScreen(),
    Center(child: "Places".text.bold.color(Vx.white).size(52).make()),
    ChatScreen(),
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

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<MainController>();

    return Scaffold(
        backgroundColor: backgroundcolor,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
          centerTitle: true,
          leading: Image.asset("assets/img2.png"),
          title: "Message".text.make(),
          actions: [Icon(Icons.search)],
        ),
        body: Padding(
          padding: EdgeInsets.all(18.0.sp),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(90, 90, 90, 1)),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 16.sp, horizontal: 42.0.sp),
                    child: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GetBuilder<MainController>(builder: (controller) {
                            return GestureDetector(
                              onTap: () {
                                controller.isAllMessegeF(true);
                              },
                              child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: "All Messages"
                                      .text
                                      .color(Vx.white)
                                      .size(12)
                                      .make()),
                            );
                          }),
                          78.sp.widthBox,
                          GetBuilder<MainController>(builder: (controller) {
                            return GestureDetector(
                                onTap: () {
                                  controller.isAllMessegeF(false);
                                },
                                child: "Communties"
                                    .text
                                    .color(Vx.white)
                                    .size(12)
                                    .make());
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
                50.sp.heightBox,
                GetBuilder<MainController>(builder: (controller) {
                  return Column(
                    children: [
                      controller.isAllMessage == true
                          ? ChatHomePage()
                          : CommunitiesScreen()
                    ],
                  );
                }),
              ],
            ),
          ),
        ));
  }
}
