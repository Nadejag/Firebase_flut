import 'package:cashbook/res/Components/homepage/records/recordtext_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class entries extends StatelessWidget {
  const entries({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Row(
                children: [
                  Text("Nade",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.9)),),
                  SizedBox(width: width*0.02,),
                  Text("(Customer)",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.5)),),
                ],
              ),
              subtitle: Row(
                children: [
                  record_buttonssmall(height: height, width: width, text: 'Profit',color: Colors.deepPurple.shade700,bgcolor: Colors.deepPurpleAccent.withOpacity(0.2)),
                  SizedBox(width: width*0.02,),
                  record_buttonssmall(height: height, width: width, text: 'Cash',color: Colors.blue.shade700,bgcolor: Colors.blue.withOpacity(0.2)),
                ],
              ),
              trailing: Container(
                // width: width*0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 38),
                      child: Text("1,000",style: TextStyle(fontSize: 13,color: Colors.green.shade800,fontWeight: FontWeight.bold),),
                    ),
                    Text("Balance: 3,000",style: TextStyle(fontSize: 10.5,color: Colors.grey.shade600,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
            //mark name
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nade Ali",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.5)),),
                  Divider(color: Colors.grey.withOpacity(0.3),),
                  Row(
                    children: [
                      Text("Entry by You",style: TextStyle(fontSize: 10,color: Colors.green.shade700,fontWeight: FontWeight.bold),),
                      SizedBox(width: width*0.01,),
                      Text("at 7:29 pm",style: TextStyle(fontSize: 10.2,color: Colors.grey.shade500,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: height*0.01,)

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

