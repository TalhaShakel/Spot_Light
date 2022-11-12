import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class mytextfield extends StatelessWidget {
  var text;

  mytextfield({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Vx.white,
          ),
          fillColor: Color.fromARGB(146, 255, 255, 255),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11.sp),
            borderSide: BorderSide(color: Colors.grey, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11.sp),
            borderSide: BorderSide(color: Colors.grey, width: 2.0),
          ),
          hintText: '$text',
          // : Icon(Icons.mail_outline),
          prefixIcon: Icon(
            Icons.person_pin_circle_sharp,
            color: Vx.white,
          )),
    );
  }
}
