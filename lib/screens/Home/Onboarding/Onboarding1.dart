import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spot_light/screens/Home/Onboarding/Onboarding2.dart';
import 'package:velocity_x/velocity_x.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            Get.to(() => Onboarding2());
          },
          child: Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Onboarding-1.png"),
                    //  AssetImage("assets/Group 514155.png"),
                    fit: BoxFit.cover)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      "Find friends all over the world"
                          .text
                          .size(35)
                          .bold
                          .white
                          .make(),
                      10.heightBox,
                      "With app, it’s easy to find the right music for every moment"
                          .text
                          .size(14)
                          .white
                          .make(),
                      50.heightBox,
                      // GestureDetector(
                      //     onTap: () {
                      //     },
                      //     child: Image.asset("assets/btn.png"))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
