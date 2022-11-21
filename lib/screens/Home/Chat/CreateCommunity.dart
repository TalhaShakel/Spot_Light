import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spot_light/screens/Home/Chat/CreateCommunityFormscreen.dart';
import 'package:spot_light/utils/contraint.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateCommunity extends StatefulWidget {
  const CreateCommunity({super.key});

  @override
  State<CreateCommunity> createState() => _CreateCommunityState();
}

class _CreateCommunityState extends State<CreateCommunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
        centerTitle: true,
        title: "Create a Community".text.make(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {
                Get.to(() => CreateCommunityFormScreen());
              },
              child: Center(
                  child: Text(
                "Next",
                style: TextStyle(
                    color: Color.fromRGBO(84, 104, 253, 1), fontSize: 18),
              )),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(children: [
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(255, 255, 255, 0.1),
                //////////////////////////////////////////
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Vx.white,
                  ),
                  onPressed: () {},
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: Color.fromRGBO(155, 155, 155, 1)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                // errorText: _errorText,
              ),
            ),
            ////////////////////////////////////////
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    communityprofile(),
                    communityprofile(),
                    communityprofile(),
                    communityprofile(),
                    communityprofile(),
                  ],
                ),
              ),
            ),
            //////////////////////////////////////////////////////////
          ]),
        ),
      ),
    );
  }

  bool selectuser = false;

  Padding communityprofile() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Image.asset(
            "assets/profilee.png",
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          "Suami Orangs",
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500),
        ),
        trailing: GestureDetector(
          onTap: () {
            setState(() {
              selectuser = !selectuser;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            // color: Colors.blue,
            decoration: BoxDecoration(
              color: selectuser == true
                  ? Color.fromRGBO(84, 104, 253, 1)
                  : Colors.transparent,
              border: Border.all(
                color: Color.fromRGBO(84, 104, 253, 1),
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
