import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class filterbutton extends StatelessWidget {
  const filterbutton({
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
                  Icon(Icons.close,color: Colors.grey.withOpacity(0.9),),
                  SizedBox(width: width*0.03,),
                  Text("CLEAR",style: TextStyle(fontSize: 13.5,fontWeight: FontWeight.bold,color: Colors.grey.withOpacity(0.9),letterSpacing: 0.8),),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey.withOpacity(0.35)
                ),
                child: Center(child: Text("APPLY",style: TextStyle(fontSize: 13.5,fontWeight: FontWeight.bold,color: Colors.grey.withOpacity(1),letterSpacing: 1),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}