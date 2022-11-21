import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
              onTap: () {},
              child: Center(
                  child: Text(
                "Next",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              )),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Container(
            height: 40,
            // color: Colors.grey,
            child: Center(
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
//////////////////////////////////////////
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // errorText: _errorText,
                ),
              ),
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
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
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
              color: selectuser == true ? Colors.blue : Colors.transparent,
              border: Border.all(
                color: Colors.blue,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
