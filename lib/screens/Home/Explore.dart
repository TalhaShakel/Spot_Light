import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
        centerTitle: true,
        leading: Image.asset("assets/img2.png"),
        title: "Explore".text.make(),
        actions: [Icon(Icons.search)],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0.sp),
        child: Column(
          children: [
            "Memories".text.white.make(),
            box.roundedFull.white.size(100, 100).make()
          ],
        ),
      ),
    );
  }
}
