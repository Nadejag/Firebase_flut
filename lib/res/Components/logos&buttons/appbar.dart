import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appbar_cashboksc extends StatelessWidget {
   appbar_cashboksc({
    super.key,
    required this.width, required this.heading, required this.desc,   this.icons,
  });

  final double width;
final String heading;
  final String desc;
   Icon? icons;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(heading,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13.9,letterSpacing: 0.6,),),
            Text(desc,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 10,letterSpacing: 0.6,),),
          ],
        ),
        SizedBox(width: width * 0.05,),
        if (icons != null) icons!,
      ],
    );
  }
}