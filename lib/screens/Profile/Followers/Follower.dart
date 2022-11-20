import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class FollowersScreen extends StatefulWidget {
  FollowersScreen({super.key});

  @override
  State<FollowersScreen> createState() => _FollowersScreenState();
}

class _FollowersScreenState extends State<FollowersScreen> {
  int index = 0;

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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Text(
                      "101 Followers",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  15.widthBox,
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Text(
                      "24 Following",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  15.widthBox,
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Text(
                      "Subscriptions",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              height: 60,
              width: MediaQuery.of(context).size.width * 0.93,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
            10.heightBox,
            ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color(0xff764abc),
                  child: Image.asset(
                    "assets/img2.png",
                  ),
                ),
                title: Row(
                  children: [
                    Text(
                      "Lana",
                      style: TextStyle(color: Colors.white),
                    ),
                    15.widthBox,
                    index == 0
                        ? Text(
                            "Follow",
                            style: TextStyle(color: Colors.blue),
                          )
                        : Text(""),
                  ],
                ),
                subtitle: Text(
                  "Hai, whats’up bro. hayu atuh hangout dei jang Sabrina",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                trailing: index == 0
                    ? ElevatedButton(
                        child: Text("Remove"),
                        onPressed: () {},
                      )
                    : (index == 1)
                        ? ElevatedButton(
                            child: Text("Following"),
                            onPressed: () {},
                          )
                        : ElevatedButton(
                            onPressed: () {}, child: Text("Subscribe"))),
            Divider(color: Colors.grey[350], height: 2),
          ]),
        ),
      ),
    );
  }
}
