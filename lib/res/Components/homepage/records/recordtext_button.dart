import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class record_buttonssmall extends StatelessWidget {
  const record_buttonssmall({
    super.key,
    required this.height,
    required this.width, this.color,required this.text, this.bgcolor,
  });

  final double height;
  final double width;
  final Color? color;
  final Color? bgcolor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: height*0.03,),
        Container(
          width: width*0.2/1.5,
          height: height*0.03/1.3,
          decoration: BoxDecoration(
              color:bgcolor,
              borderRadius: BorderRadius.circular(2)
          ),
          child: Center(child: Text(text,style: TextStyle(fontSize: 12,fontWeight:FontWeight.w600,color: color),),),
        )
      ],
    );
  }
}
