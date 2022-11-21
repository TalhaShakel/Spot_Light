import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spot_light/screens/Home/Chat/CreateCommunity.dart';
import 'package:velocity_x/velocity_x.dart';

class CommunitiesScreen extends StatelessWidget {
  CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(children: [
            // Container(
            //   height: 100,
            // ),
            Row(
              children: [
                Text(
                  "Recommended Communities",
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CommunityContainer(context),
                  ///////////////////////////////////
                  CommunityContainer(context),
                ],
              ),
            ),
            /////////////////////////////////////
            24.sp.heightBox,
            // Vx
            Row(
              children: [
                Text(
                  "My Communities",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CommunityContainer(context),
                  ///////////////////////////////////
                  CommunityContainer(context),
                ],
              ),
            ),
            31.sp.heightBox,
            CommunityButton(context),
          ]),
        ),
      ),
    );
  }

  CommunityContainer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 19.0.sp, top: 14.sp),
      child: Container(
        height: 199.sp,
        width: 238.sp,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Rectangle 2665.png"),
              alignment: Alignment.topCenter),
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(20.0.sp),
        ),
        /////////////////////////////////////////
        child: FittedBox(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  "assets/profilee.png",
                  height: 67.sp,
                  width: 67.sp,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Danny",
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I found this skateboard on the internet, and\n surprisingly it's come with a good quality",
                    style: TextStyle(color: Colors.white, fontSize: 10.sp),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Color.fromRGBO(84, 104, 253, 1),
                    ),
                    Text(
                      "122 Members",
                      style: TextStyle(color: Colors.white, fontSize: 10.sp),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Color.fromRGBO(84, 104, 253, 1),
                    ),
                    Text(
                      "Mumbai",
                      style: TextStyle(color: Colors.white, fontSize: 10.sp),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  CommunityButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(CreateCommunity());
      },
      child: Container(
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11.sp),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color.fromRGBO(85, 105, 255, 1),
                Color.fromRGBO(0, 30, 255, 1)
              ],
            ),
          ),
          child: "Creat a Community"
              .text
              .center
              .size(13.sp)
              .color(Vx.white)
              .bold
              .make()
              .paddingOnly(top: 17.sp, bottom: 17.sp)),
    );
  }
}
