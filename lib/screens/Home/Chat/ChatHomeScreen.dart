import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spot_light/screens/Home/Chat/ChatRoomScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatHomePage extends StatelessWidget {
  const ChatHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: "Stories".text.bold.color(Vx.white).size(14).make()),
        12.heightBox,
        Align(
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              stories(),
              stories(),
              stories(),
              stories(),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              chat_home_tab(),
              chat_home_tab(),
              chat_home_tab(),
              chat_home_tab(),
            ],
          ),
        )
      ],
    );
  }

  chat_home_tab() {
    return GestureDetector(
      onTap: () {
        Get.to(() => ChatRoom());
      },
      child: ListTile(
        leading: Container(
            height: 61.sp,
            width: 61.sp,
            child: Image.asset(
              "assets/Ellipse 2370.png",
              fit: BoxFit.contain,
            )),
        title: "Sabrina Wah".text.white.size(14).bold.make(),
        subtitle: "Hai, whats’up bro. hayu atuh hangout dei jang Sabrina"
            .text
            .size(14)
            .color(Color.fromRGBO(255, 255, 255, 1))
            .make(),
        trailing: Column(
          children: [
            Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: "1".text.size(10).white.make())
                .box
                .color(Vx.hexToColor("#4A5FFC"))
                .roundedFull
                .make(),
            "2:30 PM"
                .text
                .size(10)
                .color(Color.fromRGBO(255, 255, 255, 1))
                .make(),
          ],
        ),
      ),
    );
  }

  stories() {
    return Padding(
      padding: EdgeInsets.only(right: 18.0.sp),
      child: Column(
        children: [
          Container(
              height: 45.sp,
              width: 45.sp,
              child: Image.asset(
                "assets/card_status.png",
                fit: BoxFit.contain,
              )),
          8.heightBox,
          "Ahmeds".text.color(Vx.white).size(12).make(),
        ],
      ),
    );
  }
}

class NoMessage extends StatelessWidget {
  const NoMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/Illus.png"),
        50.sp.heightBox,
        "No Messages".text.bold.white.size(20).make(),
        8.sp.heightBox,
        "When you have messagesyou’ll see them here."
            .text
            .bold
            .color(Color.fromRGBO(145, 144, 154, 1))
            .size(14)
            .make(),
      ],
    );
  }
}
