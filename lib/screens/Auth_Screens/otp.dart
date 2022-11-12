import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:spot_light/screens/Auth_Screens/update.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 60.sp,
                  ),
                  child: Text(
                    "Verification",
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
                95.sp.heightBox,
                Center(
                  child:
                      "We have send you an email at john****@gmail.com to reset your password"
                          .text
                          .color(Color.fromRGBO(110, 110, 130, 1))
                          .make(),
                ),
                25.sp.heightBox,
                PinCodeTextField(
                    // backgroundColor: Colors.blue.shade50,
                    pinTheme: PinTheme(
                      inactiveColor: Color.fromRGBO(82, 103, 255, 1),
                      activeColor: Color.fromRGBO(82, 103, 255, 1),
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                    ),
                    textStyle: TextStyle(color: Vx.white),
                    appContext: context,
                    length: 6,
                    onChanged: (value) {}),
                95.sp.heightBox,
                GestureDetector(
                  onTap: () {
                    Get.to(() => UpdatePasssword());
                  },
                  child: Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.sp),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Color.fromRGBO(84, 104, 253, 1),
                            Color.fromRGBO(0, 30, 255, 1)
                          ],
                        ),
                      ),
                      child: "CONFIRM"
                          .text
                          .center
                          .size(13.sp)
                          .color(Vx.white)
                          .bold
                          .make()
                          .paddingOnly(top: 17.sp, bottom: 17.sp)),
                ),
                25.sp.heightBox,
                "Don't receive OTP? Resend"
                    .text
                    .color(Color.fromARGB(255, 90, 91, 94))
                    .make(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
