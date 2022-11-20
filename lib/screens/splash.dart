import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spot_light/screens/Home/Onboarding/Onboarding1.dart';
import 'package:spot_light/screens/Profile/Comments/Comments.dart';
import 'package:spot_light/screens/Profile/EditProfile.dart';
import 'package:spot_light/screens/Profile/Followers/Follower.dart';
import 'package:spot_light/screens/Profile/Profile.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Onboarding1(),
          ));
    });
    return Scaffold(
      backgroundColor: backgroundcolor,
      // ignore: prefer_const_constructors
      body: Center(
          // ignore: prefer_const_constructors
          child: Text(
        "SPOT LIGHT",
        // ignore: prefer_const_constructors
        style: TextStyle(
            color: Vx.white, fontSize: 31, fontWeight: FontWeight.bold),
      )),
    );
  }
}
