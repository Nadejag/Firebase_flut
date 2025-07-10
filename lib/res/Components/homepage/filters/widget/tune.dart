import 'package:cashbook/res/Components/color.dart' show colorss;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tune extends StatelessWidget {
  const tune({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width*0.11,
        height: height*0.03,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: InkWell(child: Icon(Icons.tune,color: colorss().bluecolor3,)));
  }
}