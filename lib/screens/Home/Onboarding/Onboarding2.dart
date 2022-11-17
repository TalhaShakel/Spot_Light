import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spot_light/screens/Home/Onboarding/Onboarding3.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            Get.to(() => Onboarding3());
          },
          child: Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Onboarding-2.png"),
                    fit: BoxFit.fitWidth)),
          ),
        ),
      ),
    );
  }
}
