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
                    image:
                        // AssetImage("assets/Onboarding-1.png"),
                        AssetImage("assets/Group 514155.png"),
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
                      "Welcome to Spotlight".text.size(35).bold.white.make(),
                      10.heightBox,
                      "With Spotlight, you can go live with your friends, share thoughts in global audio events and promote your services at a global as well as local level."
                          .text
                          .size(14)
                          .white
                          .make(),
                      50.heightBox,
                      GestureDetector(
                          onTap: () {
                            Get.to(() => Onboarding2());
                          },
                          child: Image.asset("assets/btn.png")),
                      50.heightBox,
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
