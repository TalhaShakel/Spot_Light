import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spot_light/screens/Auth_Screens/login.dart';
import 'package:velocity_x/velocity_x.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

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
                      "Spotlight is the first global media."
                          .text
                          .size(35)
                          .bold
                          .white
                          .make(),
                      10.heightBox,
                      "In these hard times where layoffs and recession is taking over the society, Spotlight helps you build your bsuiness and brand.With innovations never seen before.Share memories and create different events and build your community on spotlight. Spotlight has its own timeone which allows users to schdeule and collaborate with the global users easily. Communities can collaborate and the business can function precisely using the global timeline. It will save your precious time and make your communities and followers more active. Spotlight uses best security to enhance user protection. "
                          .text
                          .size(14)
                          .white
                          .make(),
                      50.heightBox,
                      GestureDetector(
                        onTap: () {
                          Get.to(() => Login_Screen());
                        },
                        child: "Start"
                            .text
                            .size(22)
                            .color(Color.fromRGBO(84, 104, 253, 1))
                            .make(),
                      ),
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
