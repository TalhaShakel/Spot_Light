import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spot_light/screens/Auth_Screens/register.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 60.sp, right: 60.sp),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 80.sp,
                  ),
                  child: Text(
                    "Sign In",
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
                  child: const Text(
                    "SPOT LIGHT",
                    style: TextStyle(
                        color: Vx.white,
                        fontSize: 31,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                49.sp.heightBox,
                mytextfield(text: "Email"),
                23.sp.heightBox,
                TextFormField(
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(
                        color: Vx.white,
                      ),
                      fillColor: Color.fromARGB(146, 255, 255, 255),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      hintText: 'Password',
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
                15.sp.heightBox,
                TextButton(
                    onPressed: () {},
                    child: Align(
                        alignment: Alignment.topRight,
                        child:
                            "Forgot Password".text.color(kprimcolor).make())),
                25.sp.heightBox,
                Container(
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
                    child: "SIGN IN"
                        .text
                        .center
                        .size(13.sp)
                        .color(Vx.white)
                        .bold
                        .make()
                        .paddingOnly(top: 17.sp, bottom: 17.sp)),
                25.sp.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "Dont have an account?"
                        .text
                        .color(Color.fromARGB(255, 90, 91, 94))
                        .make(),
                    TextButton(
                        onPressed: () {
                          Get.to(() => Register());
                        },
                        child: "Sign Up".text.color(kprimcolor).make())
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class mytextfield extends StatelessWidget {
  var text;

  mytextfield({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Vx.white,
          ),
          fillColor: Color.fromARGB(146, 255, 255, 255),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2.0),
          ),
          hintText: '$text',
          // : Icon(Icons.mail_outline),
          prefixIcon: Icon(
            Icons.person_pin_circle_sharp,
            color: Vx.white,
          )),
    );
  }
}
