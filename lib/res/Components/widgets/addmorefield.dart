import 'package:cashbook/res/Components/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addmorefield extends StatelessWidget {
  const addmorefield({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width*0.4/1.2,
      height: height*0.04/1.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              color: Colors.grey.withOpacity(0.4)
          )
      ),
      child: Center(child: Text("Add More Fields",style: TextStyle(fontSize: 12.2,fontWeight: FontWeight.bold,color: colorss().bluecolor3.withOpacity(0.9)),)),
    );
  }
}