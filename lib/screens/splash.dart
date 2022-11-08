import 'package:flutter/material.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Center(
          child: Text(
        "SPOT LIGHT",
        style: TextStyle(
            color: Vx.white, fontSize: 31, fontWeight: FontWeight.bold),
      )),
    );
  }
}
