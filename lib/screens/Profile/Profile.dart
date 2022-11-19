import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spot_light/screens/Profile/EditProfile.dart';
import 'package:spot_light/screens/Profile/Followers/Follower.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0),
        child: Column(children: [
          Container(
            width: Get.width,
            height: Get.height * 0.36,
            child: Stack(
              children: [
                Image.asset(
                  "assets/world-collapse-doomsday-scene-digital-painting 1.png",
                  // fit: BoxFit.fitWidth,
                ),
                ///////////////share icon/////////////////////
                Padding(
                  padding: const EdgeInsets.only(top: 35, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          child: IconButton(
                        icon: Icon(Icons.share),
                        color: Color.fromRGBO(84, 104, 253, 1),
                        onPressed: () {},
                      )),
                    ],
                  ),
                ),
                //////////////////////////////////////
                Positioned(
                  right: Get.width / 2.6,
                  bottom: Get.height * 0.02,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => EditProfile());
                    },
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/profilee.png",
                          // height: 82.sp,
                          // width: 82.sp,
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Image.asset(
                              "assets/editicon.png",
                              width: 25.sp,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //////////////////////////////////
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Michael Lurk",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ),
          6.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 15,
                color: Color.fromRGBO(84, 104, 253, 1),
              ),
              Text(
                "Mumbai patna",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.share,
                  size: 15,
                  color: Color.fromRGBO(84, 104, 253, 1),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Today I'hve amazing moment, when i went \nto my office, I found my old watch in the ... ",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
          /////////////////////////////
          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "682",
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 13,
                          letterSpacing: 0.4,
                          color: Color.fromRGBO(197, 197, 197, 1)),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => FollowersScreen());
                  },
                  child: Column(
                    children: [
                      Text(
                        "20K",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                          letterSpacing: 0.4,
                          color: Color.fromRGBO(197, 197, 197, 1),
                          fontWeight: FontWeight.w100,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "200",
                      style: TextStyle(
                        letterSpacing: 0.4,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Total Views",
                      style: TextStyle(
                        letterSpacing: 0.4,
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontWeight: FontWeight.w100,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "200",
                      style: TextStyle(
                        letterSpacing: 0.4,
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Subscribers",
                      style: TextStyle(
                        letterSpacing: 0.4,
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontWeight: FontWeight.w100,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          /////////////////////////////////////////////////
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: Get.width * 100 / 20,
              child: FittedBox(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.sp),
                            color: Vx.hexToColor("#5468FD")),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 35.0.sp, vertical: 9),
                          child: "Message".text.white.make(),
                        )),
                    7.widthBox,
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.sp),
                            color: Vx.hexToColor("#5468FD")),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 35.0.sp, vertical: 9),
                          child: "Subscribe".text.white.make(),
                        )),
                    7.widthBox,
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(84, 104, 253, 0.1),
                        ),
                        onPressed: () {},
                        child: Text("Follow")),
                  ],
                ),
              ),
            ),
          ),
          23.heightBox,
          Image.asset("assets/Mask group (1).png"),
          10.heightBox,

          /////////////////////////////////////////////////
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/profilee.png"),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Allison Becker",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Mumbai",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                  image: AssetImage("assets/Rectangle 2182.png"),
                  fit: BoxFit.cover),
            ),
          ),
          /////////////////////////////////////////////
          14.heightBox,
          Row(
            children: [
              Icon(
                Icons.favorite_border_outlined,
                color: Colors.blue,
                size: 28,
              ),
              Text(
                "1201",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.messenger_outline,
                color: Colors.blue,
                size: 26,
              ),
              Text(
                "24",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.send,
                color: Colors.blue,
                size: 26,
              ),
              Text(
                "24",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),

          14.heightBox,
        ]),
      )),
    );
  }
}
