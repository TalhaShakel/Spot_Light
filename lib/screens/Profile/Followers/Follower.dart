import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class FollowersScreen extends StatelessWidget {
  const FollowersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        title: Text("Micheal Lurk"),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.93,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                )
              ],
            ),
            ListTile(
              leading: Image.asset("assets/img2.png"),
              title: "Lana".text.bold.color(Vx.white).size(14.sp).make(),
              subtitle: "Hai, whats’up bro. hayu atuh hangout dei jang Sabrina"
                  .text
                  .color(Vx.white)
                  .size(10.sp)
                  .make(),
            ),
            Divider(color: Colors.grey[350], height: 2),
          ]),
        ),
      ),
    );
  }
}
