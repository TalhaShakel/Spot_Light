import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/contraint.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundcolor,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
          centerTitle: true,
          leading: Image.asset("assets/img2.png"),
          title: "Notifications".text.make(),
          actions: [Icon(Icons.search)],
        ),
        body: Column(
          children: [
            ListTile(
              leading: Image.asset("assets/img2.png"),
              title: "Lana".text.bold.color(Vx.white).size(14.sp).make(),
              subtitle: "Hai, whats’up bro. hayu atuh hangout dei jang Sabrina"
                  .text
                  .color(Vx.white)
                  .size(10.sp)
                  .make(),
              trailing: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.sp),
                      color: Color.fromRGBO(84, 104, 253, 1)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 14.0.sp, vertical: 8.sp),
                    child: "Follow".text.color(Vx.white).size(10.sp).make(),
                  )),
            ),
            Divider(color: Colors.grey[350], height: 2),
            ListTile(
              leading: Image.asset("assets/img2.png"),
              title: "Lana".text.bold.color(Vx.white).size(14.sp).make(),
              subtitle: "Hai, whats’up bro. hayu atuh hangout dei jang Sabrina"
                  .text
                  .color(Vx.white)
                  .size(10.sp)
                  .make(),
              trailing: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.sp),
                      color: Color.fromRGBO(84, 104, 253, 1)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 14.0.sp, vertical: 8.sp),
                    child: "Follow".text.color(Vx.white).size(10.sp).make(),
                  )),
            ),
            Divider(color: Colors.grey[350], height: 2),
            ListTile(
              leading: Image.asset("assets/img2.png"),
              title: "Rose".text.bold.color(Vx.white).size(14.sp).make(),
              subtitle: "Hai, whats’up bro. hayu atuh hangout dei jang Sabrina"
                  .text
                  .color(Vx.white)
                  .size(10.sp)
                  .make(),
              trailing: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.sp),
                      color: Color.fromRGBO(84, 104, 253, 1)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 14.0.sp, vertical: 8.sp),
                    child: "Follow".text.color(Vx.white).size(10.sp).make(),
                  )),
            ),
            Divider(color: Colors.grey[350], height: 2),
            ListTile(
              leading: Image.asset("assets/img2.png"),
              title: "Rose".text.bold.color(Vx.white).size(14.sp).make(),
              subtitle: "Hai, whats’up bro. hayu atuh hangout dei jang Sabrina"
                  .text
                  .color(Vx.white)
                  .size(10.sp)
                  .make(),
              trailing: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.sp),
                      color: Color.fromRGBO(84, 104, 253, 1)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 14.0.sp, vertical: 8.sp),
                    child: "Follow".text.color(Vx.white).size(10.sp).make(),
                  )),
            ),
            Divider(color: Colors.grey[350], height: 2),
            ListTile(
              leading: Image.asset("assets/img2.png"),
              title: "Lana".text.bold.color(Vx.white).size(14.sp).make(),
              subtitle: "Hai, whats’up bro. hayu atuh hangout dei jang Sabrina"
                  .text
                  .color(Vx.white)
                  .size(10.sp)
                  .make(),
              // trailing: Container(
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(5.sp),
              //         color: Color.fromRGBO(84, 104, 253, 1)),
              //     child: Padding(
              //       padding: EdgeInsets.symmetric(
              //           horizontal: 14.0.sp, vertical: 8.sp),
              //       child: "Follow".text.color(Vx.white).size(10.sp).make(),
              //     )),
            ),
            Divider(color: Colors.grey[350], height: 2),
            ListTile(
              leading: Image.asset("assets/img2.png"),
              title: "Lana".text.bold.color(Vx.white).size(14.sp).make(),
              subtitle: "Hai, whats’up bro. hayu atuh hangout dei jang Sabrina"
                  .text
                  .color(Vx.white)
                  .size(10.sp)
                  .make(),
              // trailing: Container(
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(5.sp),
              //         color: Color.fromRGBO(84, 104, 253, 1)),
              //     child: Padding(
              //       padding: EdgeInsets.symmetric(
              //           horizontal: 14.0.sp, vertical: 8.sp),
              //       child: "Follow".text.color(Vx.white).size(10.sp).make(),
              //     )),
            ),
            Divider(color: Colors.grey[350], height: 2),
            ListTile(
              leading: Image.asset("assets/img2.png"),
              title: "Lana".text.bold.color(Vx.white).size(14.sp).make(),
              subtitle: "Hai, whats’up bro. hayu atuh hangout dei jang Sabrina"
                  .text
                  .color(Vx.white)
                  .size(10.sp)
                  .make(),
              // trailing: Container(
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(5.sp),
              //         color: Color.fromRGBO(84, 104, 253, 1)),
              //     child: Padding(
              //       padding: EdgeInsets.symmetric(
              //           horizontal: 14.0.sp, vertical: 8.sp),
              //       child: "Follow".text.color(Vx.white).size(10.sp).make(),
              //     )),
            ),
            Divider(color: Colors.grey[350], height: 2),
            ListTile(
              leading: Image.asset("assets/img2.png"),
              title: "Lana".text.bold.color(Vx.white).size(14.sp).make(),
              subtitle: "Hai, whats’up bro. hayu atuh hangout dei jang Sabrina"
                  .text
                  .color(Vx.white)
                  .size(10.sp)
                  .make(),
              trailing: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.sp),
                      color: Color.fromRGBO(84, 104, 253, 1)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 14.0.sp, vertical: 8.sp),
                    child: "Follow".text.color(Vx.white).size(10.sp).make(),
                  )),
            ),
            Divider(color: Colors.grey[350], height: 2),
          ],
        ));
  }
}
