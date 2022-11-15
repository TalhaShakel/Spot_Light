import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spot_light/screens/Home/Live/live_streaming.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.heightBox,

              "Memories".text.size(16.sp).white.make(),
              // box.roundedFull.white.size(100, 100).make()
              11.heightBox,

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    memory_card("assets/card_status.png", "assets/2ec.png"),
                    memory_card("assets/card_status.png", "assets/2ec.png"),
                    memory_card("assets/card_status.png", "assets/2ec.png"),
                    memory_card("assets/card_status.png", "assets/2ec.png"),
                    memory_card("assets/card_status.png", "assets/2ec.png"),
                  ],
                ),
              ),
              11.heightBox,

              "Twiter Space".text.size(16.sp).white.make(),
              11.heightBox,
              //  {

              // },)
              GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 9,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(()=>Live_Streaming());
                      },
                      child: Container(
                        height: 118.sp,
                        width: 118.sp,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/2ec.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(3.sp),
                          color: Vx.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Image.asset(""),
                              // "Hendri".text.white.bold.make(),
                              "Live"
                                  .text
                                  .white
                                  .make()
                                  .box
                                  .padding(EdgeInsets.all(3))
                                  .color(Color.fromRGBO(235, 87, 87, 1))
                                  .bottomRounded(value: 3.sp)
                                  .topRounded(value: 3.sp)
                                  .make()
                                  .objectTopLeft(),
                              4.widthBox,
                              Row(
                                children: [
                                  Icon(
                                    Icons.remove_red_eye,
                                    color: Vx.white,
                                    size: 15,
                                  ),
                                  "8.1k".text.white.make()
                                ],
                              )
                                  .box
                                  .padding(EdgeInsets.all(3))
                                  .color(Color.fromRGBO(0, 0, 0, 0.28))
                                  .bottomRounded(value: 3.sp)
                                  .topRounded(value: 3.sp)
                                  .make(),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Padding memory_card(img, status_img) {
    return Padding(
      padding: EdgeInsets.only(right: 11.0.sp),
      child: Container(
        height: 123.07.sp,
        width: 98.78.sp,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("$status_img"), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(12.sp),
          color: Vx.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("$img"),
              "Hendri".text.white.bold.make(),
            ],
          ),
        ),
      ),
    );
  }
}
