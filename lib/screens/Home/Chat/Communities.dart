import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spot_light/screens/Home/Chat/CreateCommunity.dart';

class CommunitiesScreen extends StatelessWidget {
  CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Container(
                height: 100,
              ),
              Row(
                children: [
                  Text(
                    "Recommended Communities",
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
              /////////////////////////////////////
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
              CommunityButton(context),
            ]),
          ),
        ),
      ),
    );
  }

  Padding CommunityContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 270,
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        /////////////////////////////////////////
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(
                "assets/profilee.png",
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
                  style: TextStyle(color: Colors.white, fontSize: 18),
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
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  Text(
                    "122 Members",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.blue,
                  ),
                  Text(
                    "Mumbai",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
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
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
            child: Text(
          "CREATE A COMMUNITY",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
        )),
      ),
    );
  }
}
