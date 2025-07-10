import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class filterbottomHead extends StatelessWidget {
  const filterbottomHead({
    super.key,
    required this.width, required this.title,
  });

  final double width;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.close),
        SizedBox(width: width * 0.04),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}