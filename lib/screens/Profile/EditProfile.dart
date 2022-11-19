import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: Get.height * 0.49,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/world-collapse-doomsday-scene-digital-painting 1.png",
                    fit: BoxFit.fitHeight,
                  ),
                  Positioned(
                    bottom: Get.height * 0.21,
                    right: 0,
                    child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.camera_alt,
                              color: Vx.white,
                              size: 14.sp,
                            ))
                        .box
                        .roundedFull
                        .color(Color.fromRGBO(84, 104, 253, 1))
                        .make(),
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
                            child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(
                                      Icons.camera_alt,
                                      color: Vx.white,
                                      size: 14.sp,
                                    ))
                                .box
                                .roundedFull
                                .color(Color.fromRGBO(84, 104, 253, 1))
                                .make(),
                          ),
                        ],
                      )),
                  Positioned(
                      right: Get.width / 2.5,
                      bottom: 33,
                      child:
                          "Change Picture".text.white.bold.size(12.sp).make()),
                ],
              ),
            ),
            10.heightBox,
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 36.sp),
                child: Column(
                  children: [
                    Textfiel_heading("Username", "Shahzaib01"),
                    Textfiel_heading("Email I’d", "yanchui@gmail.com"),
                    Textfiel_heading("Email I’d", "yanchui@gmail.com"),
                    Textfiel_heading("Location", "India, Mumbai"),
                    Textfiel_heading("Location", "India, Mumbai"),
                    20.heightBox,
                    GestureDetector(
                      onTap: () {
                        // Get.to(() => MainhomeScreen());
                        Get.back();
                      },
                      child: Container(
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.sp),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: <Color>[
                                Color.fromRGBO(85, 105, 255, 1),
                                Color.fromRGBO(0, 30, 255, 1)
                              ],
                            ),
                          ),
                          child: "Update"
                              .text
                              .center
                              .size(13.sp)
                              .color(Vx.white)
                              .bold
                              .make()
                              .paddingOnly(top: 17.sp, bottom: 17.sp)),
                    ),
                    10.heightBox,
                    GestureDetector(
                      onTap: () {
                        // Get.to(() => MainhomeScreen());
                        Get.back();
                      },
                      child: Container(
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.sp),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: <Color>[
                                Color.fromRGBO(85, 105, 255, 1),
                                Color.fromRGBO(0, 30, 255, 1)
                              ],
                            ),
                          ),
                          child: "Logout"
                              .text
                              .center
                              .size(13.sp)
                              .color(Vx.white)
                              .bold
                              .make()
                              .paddingOnly(top: 17.sp, bottom: 17.sp)),
                    ),
                    20.heightBox,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column Textfiel_heading(hedaingText, Textfieldtext) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "$hedaingText".text.white.bold.size(10.sp).make(),
        10.heightBox,
        TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide:
                      BorderSide(color: Color.fromRGBO(164, 162, 162, 1)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide:
                      BorderSide(color: Color.fromRGBO(164, 162, 162, 1)),
                ),
                hintStyle: TextStyle(color: Color.fromRGBO(164, 162, 162, 1)),
                hintText: "$Textfieldtext")),
        19.heightBox
      ],
    );
  }
}
