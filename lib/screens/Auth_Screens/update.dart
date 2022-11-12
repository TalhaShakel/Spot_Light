import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:spot_light/utils/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class UpdatePasssword extends StatelessWidget {
  const UpdatePasssword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 80.sp,
                  ),
                  child: Text(
                    "Update Password",
                    style: TextStyle(
                        color: Vx.white,
                        fontSize: 31,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                      top: 50.sp,
                    ),
                    child: Image.asset("assets/Group 1363.png")),
                49.sp.heightBox,
                // mytextfield(text: "Email"),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: Vx.white,
                    ),
                    fillColor: Color.fromARGB(146, 255, 255, 255),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.sp),
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.sp),
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    hintText: 'Password',
                    // : Icon(Icons.mail_outline),
                    prefixIcon: Icon(
                      Icons.key,
                      color: Vx.white,
                    ),
                  ),
                ),
                23.sp.heightBox,
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Vx.white,
                      ),
                      fillColor: Color.fromARGB(146, 255, 255, 255),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.sp),
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.sp),
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      hintText: 'Confirm Password',
                      // : Icon(Icons.mail_outline),
                      prefixIcon: Icon(
                        Icons.key,
                        color: Vx.white,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Vx.white,
                      )),
                ),
                // 15.sp.heightBox,
                // TextButton(
                //     onPressed: () {},
                //     child: Align(
                //         alignment: Alignment.topRight,
                //         child:
                //             "Forgot Password".text.color(kprimcolor).make())),
                25.sp.heightBox,
                Container(
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
                    child: "UPDATE PASSWORD"
                        .text
                        .center
                        .size(13.sp)
                        .color(Vx.white)
                        .bold
                        .make()
                        .paddingOnly(top: 17.sp, bottom: 17.sp)),
                5.sp.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
