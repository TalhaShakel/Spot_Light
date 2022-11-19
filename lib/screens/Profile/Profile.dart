import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: Get.height * 0.39,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/world-collapse-doomsday-scene-digital-painting 1.png",
                    // fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                      right: Get.width / 2.5,
                      bottom: Get.height / 9,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/profilee.png",
                            // height: 82.sp,
                            // width: 82.sp,
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Image.asset(
                                "assets/editicon.png",
                                width: 25.sp,
                              )),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
