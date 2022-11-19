import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
                      GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.only(
                                  topEnd: Radius.circular(25),
                                  topStart: Radius.circular(25),
                                ),
                              ),
                              bottomsheet_viewrs(),
                              backgroundColor: Vx.black);
                        },
                        child: Row(
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
                      ),
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
                            onTap: () async {
                              Get.bottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusDirectional.only(
                                      topEnd: Radius.circular(25),
                                      topStart: Radius.circular(25),
                                    ),
                                  ),
                                  isScrollControlled: true,
                                  bottomsheet_widget());
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

class bottomsheet_viewrs extends StatelessWidget {
  const bottomsheet_viewrs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          15.sp.heightBox,
          Container(
            height: 3,
            width: 40,
            decoration: BoxDecoration(color: Vx.gray100),
          ),
          20.sp.heightBox,
          "Audience (548)".text.white.make(),
          20.sp.heightBox,
          GridView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 12, crossAxisSpacing: 12),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        // Icon(
                        //   Icons.add_circle,
                        //   color: Colors.white,
                        // ),
                        Container(
                          width: 60,
                          child: Image.asset("assets/img2.png"),
                        ),
                        Positioned(
                          right: -1,
                          bottom: 0,
                          child: Icon(
                            Icons.add_circle,
                            color: Color.fromRGBO(84, 104, 253, 1),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        "John Doe".text.white.make(),
                        Icon(
                          Icons.mic_off,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                );
              })
        ],
      ),
    );
  }
}

class bottomsheet_widget extends StatelessWidget {
  var message = TextEditingController();

  bottomsheet_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Vx.black,
          borderRadius: BorderRadiusDirectional.only(
            topEnd: Radius.circular(25),
            topStart: Radius.circular(25),
          ),
        ),
        height: Get.height * 0.7,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.sp),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      15.sp.heightBox,
                      Container(
                        height: 3,
                        width: 40,
                        decoration: BoxDecoration(color: Vx.gray100),
                      ),
                      20.sp.heightBox,
                      "Pewpew Here!!! Playing game and chatting with me."
                          .text
                          .size(22.sp)
                          .white
                          .make(),
                      11.sp.heightBox,
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 0.2),
                                    borderRadius: BorderRadius.circular(6.sp)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      "#Esport".text.size(10.sp).white.make(),
                                )),
                          ),
                          5.widthBox,
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 0.2),
                                    borderRadius: BorderRadius.circular(6.sp)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: "#LOL".text.size(10.sp).white.make(),
                                )),
                          ),
                          5.widthBox,
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 0.2),
                                    borderRadius: BorderRadius.circular(6.sp)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      "#English".text.size(10.sp).white.make(),
                                )),
                          ),
                        ],
                      ),
                      16.sp.heightBox,
                      ListTile(
                        leading: Image.asset("assets/img2.png"),
                        title: "Pewpew".text.size(15.sp).bold.white.make(),
                        subtitle: "Pewpew".text.size(12.sp).white.make(),
                        trailing: Container(
                          height: 30,
                          width: 100.sp,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(84, 104, 253, 1),
                              borderRadius: BorderRadius.circular(6.sp)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.bookmark,
                                  color: Vx.white,
                                ),
                                "Subscribe".text.size(12.sp).white.make(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/img2.png"),
                        title: "Jackson Ruice"
                            .text
                            .size(15.sp)
                            .color(Color.fromRGBO(143, 155, 179, 1))
                            .make(),
                        subtitle: "Your eyes very nice."
                            .text
                            .size(12.sp)
                            .white
                            .make(),
                        // trailing: Container(
                        //   height: 30,
                        //   width: 100.sp,
                        //   decoration: BoxDecoration(
                        //       color: Color.fromRGBO(84, 104, 253, 1),
                        //       borderRadius: BorderRadius.circular(6.sp)),
                        //   child: Center(
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: [
                        //         Icon(
                        //           Icons.bookmark,
                        //           color: Vx.white,
                        //         ),
                        //         "Subscribe".text.size(12.sp).white.make(),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/img2.png"),
                        title: "Alone Buff"
                            .text
                            .size(15.sp)
                            .color(Color.fromRGBO(143, 155, 179, 1))
                            .make(),
                        subtitle: "Your eyes very nice."
                            .text
                            .size(12.sp)
                            .white
                            .make(),
                        // trailing: Container(
                        //   height: 30,
                        //   width: 100.sp,
                        //   decoration: BoxDecoration(
                        //       color: Color.fromRGBO(84, 104, 253, 1),
                        //       borderRadius: BorderRadius.circular(6.sp)),
                        //   child: Center(
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: [
                        //         Icon(
                        //           Icons.bookmark,
                        //           color: Vx.white,
                        //         ),
                        //         "Subscribe".text.size(12.sp).white.make(),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/img2.png"),
                        title: "Jackson Ruice"
                            .text
                            .size(15.sp)
                            .color(Color.fromRGBO(143, 155, 179, 1))
                            .make(),
                        subtitle: "Pewpew".text.size(12.sp).white.make(),
                        // trailing: Container(
                        //   height: 30,
                        //   width: 100.sp,
                        //   decoration: BoxDecoration(
                        //       color: Color.fromRGBO(84, 104, 253, 1),
                        //       borderRadius: BorderRadius.circular(6.sp)),
                        //   child: Center(
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: [
                        //         Icon(
                        //           Icons.bookmark,
                        //           color: Vx.white,
                        //         ),
                        //         "Subscribe".text.size(12.sp).white.make(),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // color: Colors.grey[200],
                decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(25.sp)),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        controller: message,
                        maxLines: null,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            hintText: "Type comment here..."),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        try {
                          // _sendMessage();
                        } catch (e) {
                          print(e);
                        }
                      },
                      icon: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
