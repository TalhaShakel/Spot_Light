import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          width: Get.width,
          height: Get.height * 0.32,
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
                      color: Colors.blue,
                      onPressed: () {},
                    )),
                  ],
                ),
              ),
              //////////////////////////////////////
              Positioned(
                right: Get.width / 2.6,
                bottom: Get.height / 50,
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
            ],
          ),
        ),
        //////////////////////////////////
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Michael Lurk",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              size: 15,
              color: Colors.blue,
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
                color: Colors.blue,
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
          height: 8,
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
                        fontSize: 25,
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
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
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
                      color: Colors.white,
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
                      color: Colors.white,
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
                      color: Colors.white,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 220,
                child:
                    ElevatedButton(onPressed: () {}, child: Text("Message"))),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Follow")),
          ],
        ),
        ///////////////////////////////////////////
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_box_rounded),
              color: Colors.blue,
            )
          ],
        ),

        /////////////////////////////////////////////////
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
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
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                  image: AssetImage("assets/Rectangle 2182.png"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        /////////////////////////////////////////////
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          child: Row(
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
        ),
      ])),
    );
  }
}
