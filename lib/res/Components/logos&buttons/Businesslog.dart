import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class businesslogo extends StatelessWidget {
  const businesslogo({
    super.key,
    required this.width,
    required this.height, required this.color,
  });

  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        width: width*0.08,
        height: height * 0.03,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              width: 1,
              color: Colors.black45
          ),
        ),
        child: Icon(Icons.business,color: color,),
      ),
    );
  }
}

class cameralogo extends StatelessWidget {
  const cameralogo({
    super.key,
    required this.width,
    required this.height, required this.color,
  });

  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        width: width*0.2/1.5,
        height: height * 0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              width: 1,
              color: Colors.black45.withOpacity(0.3)
          ),
        ),
        child: Icon(Icons.camera_alt_outlined,color: color,size: 35,),
      ),
    );
  }
}

