import 'package:cashbook/res/Components/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class filterbuttoncolor extends StatelessWidget {
  const filterbuttoncolor({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 5),
      child: Container(
        width: double.infinity,
        height: height*0.05,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Icon(Icons.close,color: colorss().bluecolor3.withOpacity(0.9),),
                  SizedBox(width: width*0.03,),
                  Text("CLEAR",style: TextStyle(fontSize: 13.5,fontWeight: FontWeight.bold,color: colorss().bluecolor3.withOpacity(0.8),letterSpacing: 1),),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color:colorss().bluecolor3.withOpacity(0.9)
                ),
                child: Center(child: Text("APPLY",style: TextStyle(fontSize: 13.5,fontWeight: FontWeight.bold,color: colorss().whitecolor1.withOpacity(1),letterSpacing: 1),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}