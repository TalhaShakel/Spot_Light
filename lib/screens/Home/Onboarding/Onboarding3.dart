import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spot_light/screens/Auth_Screens/login.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            Get.to(() => Login_Screen());
          },
          child: Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Onboarding-3.png"),
                    fit: BoxFit.fitWidth)),
          ),
        ),
      ),
    );
  }
}
