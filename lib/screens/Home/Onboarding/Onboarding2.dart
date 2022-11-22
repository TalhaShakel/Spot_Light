import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spot_light/screens/Home/Onboarding/Onboarding3.dart';
import 'package:velocity_x/velocity_x.dart';

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
                      "Explore the world like never before"
                          .text
                          .size(35)
                          .bold
                          .white
                          .make(),
                      10.heightBox,
                      "Join and participate in global events.  Share your thoughts globally and build your community.  Upload disappearing memories for the world to see and schedule events for your global community to join."
                          .text
                          .size(14)
                          .white
                          .make(),
                      50.heightBox,
                      GestureDetector(
                          onTap: () {
                            Get.to(() => Onboarding3());
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
