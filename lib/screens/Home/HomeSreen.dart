import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spot_light/Controllers/mainController.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Bitmap.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          // backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: Image.asset("assets/img2.png"),
          title: "Home".text.make(),
          actions: [Icon(Icons.search)],
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(21.0.sp),
          child: Column(
            children: [
              GetBuilder<MainController>(builder: (controller) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      tabs("All"),
                      2.widthBox,
                      tabs("Favourites"),
                      2.widthBox,
                      tabs("Restaurants"),
                      2.widthBox,
                      tabs("Shops"),
                      2.widthBox,
                      tabs("Cafe")
                    ],
                  ),
                );
              }),

              // .wh(150, 50),
            ],
          ),
        )),
      ),
    );
  }

  Widget tabs(txt) {
    var controller = Get.find<MainController>();

    return GetBuilder<MainController>(builder: (controller) {
      return GestureDetector(
        onTap: () {
          controller.tabs(txt);
          print(controller.selectedSport);
        },
        child: "$txt"
            .text
            .white
            .size(14.sp)
            .make()
            .p8()
            .card
            .p1
            // .roundedSM
            .color(controller.selectedSport == txt
                ? Vx.hexToColor("#4156FC")
                : Color.fromRGBO(255, 255, 255, 0.09))
            .make(),
      );
    });
  }
}
