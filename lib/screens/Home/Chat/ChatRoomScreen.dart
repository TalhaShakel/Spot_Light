import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatRoom extends StatelessWidget {
  // User _user ="as";

  ChatRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
        centerTitle: true,
        leading: Image.asset("assets/img2.png"),
        title: "Sabrina Wah".text.make(),
        // actions: [Icon(Icons.search)],

        // backgroundColor: ,
      ),
      backgroundColor: backgroundcolor,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  BubbleSpecialThree(
                    text: 'Added iMassage shape bubbles',
                    color: Vx.hexToColor("#3950FD"),
                    tail: false,
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  BubbleSpecialThree(
                    text: 'Please try and give some feedback on it!',
                    color: Vx.hexToColor("#3950FD"),
                    tail: true,
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  BubbleSpecialThree(
                    text: 'Sure',
                    color: Vx.hexToColor("#4e4e4e"),
                    tail: false,
                    isSender: false,
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  BubbleSpecialThree(
                    text: "I tried. It's awesome!!!",
                    color: Vx.hexToColor("#4e4e4e"),
                    tail: false,
                    isSender: false,
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  BubbleSpecialThree(
                    text: "Thanks",
                    color: Vx.hexToColor("#4e4e4e"),
                    tail: true,
                    isSender: false,
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          Container(
            // color: Colors.grey[200],

            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Vx.hexToColor("#F5F5F5"),
                        borderRadius: BorderRadius.circular(10.sp)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      child: TextFormField(
                        // controller: message,
                        maxLines: null,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                try {
                                  // _sendMessage();
                                } catch (e) {
                                  print(e);
                                }
                              },
                              icon: Icon(
                                Icons.send,
                                color: Vx.hexToColor("#5468FD"),
                              ),
                            ),
                            // : BorderRadius.circular(25.sp),

                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            hintText: "Type comment here..."),
                      ),
                    ),
                  ),
                ),
                4.widthBox,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.add,
                    color: Vx.white,
                  ),
                ).box.color(Vx.hexToColor("#4A5FFC")).roundedFull.make(),
              ],
            ),
          ),
          
        ],
      ),
    );
  }

  Align chatTab(align) {
    return Align(
        alignment: align,
        child: Padding(
          padding: EdgeInsets.only(
              left: align == Alignment.topRight ? 58.0 : 8.0,
              right: align == Alignment.topLeft ? 58.0 : 8,
              top: 8,
              bottom: 8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.sp),
                bottomLeft: Radius.circular(16.sp),
                bottomRight: Radius.circular(16.sp),
              ),
              color: Vx.hexToColor("#3950FD"),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0.sp),
              child:
                  "Hi, thanks for accompanying me today. really enjoyed today i like it"
                      .text
                      .white
                      .size(12.sp)
                      .align(TextAlign.right)
                      .make(),
            ),
          ),
        ));
  }
}
