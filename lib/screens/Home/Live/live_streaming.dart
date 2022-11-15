import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

class Live_Streaming extends StatelessWidget {
  const Live_Streaming({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Mask.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0.sp),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Vx.hexToColor("#5468FD"),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Row(
                          children: [
                            2.widthBox,
                            Image.asset("assets/img2.png"),
                            2.widthBox,
                            "John Doe".text.white.make(),
                            2.widthBox,
                            Icon(
                              Icons.add_circle_outline,
                              color: Vx.white,
                            ),
                            2.widthBox,
                          ],
                        ),
                      ),
                      70.widthBox,
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
                      3.widthBox,
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
                      3.widthBox,
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Vx.white)),
                          child: Icon(Icons.close, color: Vx.white))
                    ],
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Column(
                        children: [
                          200.sp.heightBox,
                          Image.asset(
                            "assets/Icon.png",
                            color: Vx.white,
                          ),
                          "150".text.white.make(),
                          33.sp.heightBox,
                          GestureDetector(
                            onTap: () {
                              
                            },
                            child: Icon(
                              Icons.comment,
                              color: Vx.white,
                            ),
                          ),
                          "150".text.white.make(),
                          33.sp.heightBox,
                          Icon(
                            Icons.share,
                            color: Vx.white,
                          ),
                          "150".text.white.make(),
                        ],
                      )),
                  ListTile(
                    leading: Image.asset("assets/img2.png"),
                    title: "Jhon Doe".text.white.bold.make(),
                    subtitle:
                        "Lorem ipsum dolor sit amet, consectetur adi piscing elit.  Quisque interdum blandit ipsum sed scelerisque."
                            .text
                            .size(12)
                            .white
                            .make(),
                  ),
                  ListTile(
                    leading: Image.asset("assets/img2.png"),
                    title: "Jhon Doe".text.white.bold.make(),
                    subtitle:
                        "Lorem ipsum dolor sit amet, consectetur adi piscing elit.  Quisque interdum blandit ipsum sed scelerisque."
                            .text
                            .size(12)
                            .white
                            .make(),
                  ),
                  ListTile(
                    leading: Image.asset("assets/img2.png"),
                    title: "Jhon Doe".text.white.bold.make(),
                    subtitle:
                        "Lorem ipsum dolor sit amet, consectetur adi piscing elit.  Quisque interdum blandit ipsum sed scelerisque."
                            .text
                            .size(12)
                            .white
                            .make(),
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: backgroundcolor,
      ),
    );
  }
}
