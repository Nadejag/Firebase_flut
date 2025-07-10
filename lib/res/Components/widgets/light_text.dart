import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lighttext extends StatelessWidget {
  const lighttext({
    super.key,
    required this.height, required this.text,
  });

  final double height;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: height*0.01,),
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text(text,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black45),),
        ),
        SizedBox(height: height*0.01,),
      ],
    );
  }
}
