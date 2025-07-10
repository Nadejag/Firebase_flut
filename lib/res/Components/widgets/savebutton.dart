import 'package:cashbook/res/Components/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class savebutton extends StatelessWidget {
  const savebutton({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color:colorss().bluecolor3)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SAVE & ADD NEW ",
                  style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 0.5,
                    color: colorss().bluecolor3,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(width: width*0.03,),

        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: colorss().bluecolor3,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SAVE",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
          ),
        ),
        SizedBox(height: height*0.1,)
      ],
    );
  }
}