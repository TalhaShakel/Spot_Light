import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spot_light/ScheduleEventScreen.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        title: Text(
          "Create Post",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Image.asset(
                  "assets/Rectangle 2182.png",
                  fit: BoxFit.fitHeight,
                ),
                10.heightBox,
                Positioned(
                  bottom: 0,
                  right: 150,
                  child: CircleAvatar(
                    // bottom: 0,
                    // top: 0,
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
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  //////////////////////////////////////////

                  hintText: "Headline",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // errorText: _errorText,
                ),
              ),
              20.heightBox,
              TextFormField(
                  maxLines: 6,
                  decoration: InputDecoration(
                      fillColor: Vx.white,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(11.0.sp)),
                        borderSide:
                            BorderSide(color: Color.fromRGBO(164, 162, 162, 1)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide:
                            BorderSide(color: Color.fromRGBO(164, 162, 162, 1)),
                      ),
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(164, 162, 162, 1)),
                      hintText: "What's happening?")),
              60.heightBox,
              GestureDetector(
                onTap: () {
                  Get.to(ScheduleEvent());
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
                    child: "POST"
                        .text
                        .center
                        .size(13.sp)
                        .color(Vx.white)
                        .bold
                        .make()
                        .paddingOnly(top: 17.sp, bottom: 17.sp)),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
