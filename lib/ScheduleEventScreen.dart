import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

class ScheduleEvent extends StatelessWidget {
  const ScheduleEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: "Schedule Event".text.make(),
      ),
      backgroundColor: backgroundcolor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              32.sp.heightBox,
              Stack(
                children: [
                  Image.asset(
                    "assets/Rectangle 2182.png",
                    fit: BoxFit.fitHeight,
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
              ),
              26.sp.heightBox,
              Textfiel_heading(
                  "Event Name", "My Future", null, Icons.calendar_month),
              Textfiel_heading(
                  "Date ", "Mumbai, India", null, Icons.calendar_month),
              Textfiel_heading(
                  "Time ", "Mumbai, India", null, Icons.calendar_month),
              Textfiel_heading("Discription ", "Discription", 8, null),
              56.sp.heightBox,
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
                    child: "SCHEDULE EVENT"
                        .text
                        .center
                        .size(13.sp)
                        .color(Vx.white)
                        .bold
                        .make()
                        .paddingOnly(top: 17.sp, bottom: 17.sp)),
              ),
              56.sp.heightBox,
            ],
          ),
        ),
      ),
    );
  }

  Column Textfiel_heading(hedaingText, Textfieldtext, maxLines, iconName) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "$hedaingText".text.white.bold.size(14.sp).make(),
        10.heightBox,
        TextFormField(
            maxLines: maxLines,
            decoration: InputDecoration(
                fillColor: Vx.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(11.0.sp)),
                  borderSide:
                      BorderSide(color: Color.fromRGBO(164, 162, 162, 1)),
                ),
                suffixIcon: IconButton(
                  icon: Icon(iconName),
                  onPressed: () {},
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
