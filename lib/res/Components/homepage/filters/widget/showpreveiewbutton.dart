import 'package:cashbook/res/Components/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class showpreveiewbutton extends StatelessWidget {
  const showpreveiewbutton({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13,right: 13,top: 15,bottom: 13),
      child: Container(
        width: double.infinity,
        height: height*0.05,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
                width: 1.4,
                color: Colors.black.withOpacity(0.2)
            )
        ),
        child: Row(
          children: [
            SizedBox(width: width*0.04,),
            Icon(Icons.remove_red_eye,color: colorss().bluecolor3,),
            SizedBox(width: width*0.04,),
            Text("Show Preview",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6),letterSpacing: 0.4),)
          ],
        ),
      ),
    );
  }
}