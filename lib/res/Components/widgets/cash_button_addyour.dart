import 'package:cashbook/res/Components/widgets/cashbuttons.dart';
import 'package:cashbook/res/animation/bouncingarrow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cashbutton_addtext extends StatelessWidget {
  const cashbutton_addtext({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: height * 0.02),
          Text(
            "Add your first entry",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          BouncingArrow(),
          SizedBox(height: height * 0.03),
          cashbuttons(width: width, height: height),
        ],
      ),
    );
  }
}