import 'package:cashbook/res/Components/camera.dart';
import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/settings/businessprofile.dart';
import 'package:flutter/material.dart';

class ProfileStrengthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
    // double profileCompletion = 0.525; // 52.5%
      double profileCompletion =0.525;
    return  Container(
      color: colorss().whitecolor1,
      child: Column(
            children: [
              Row(
                children: [
                  camera(),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Computer", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(Icons.warning, color: Colors.red, size: 16),
                            SizedBox(width: 4),
                            Text(
                              "Incomplete business profile",
                              style: TextStyle(color: Colors.red.shade300, fontSize: 12,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Businessprofile()));
                      },
                      child: Icon(Icons.edit_outlined, color: colorss().bluecolor3)),
                  SizedBox(width: width*0.01,)
                ],
              ),
              SizedBox(height: 16),
              // LinearProgressIndicator(
              //   value: profileCompletion,
              //   backgroundColor: Colors.grey.shade300,
              //   valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
              //   minHeight: 6,
              // ),
           Padding(
             padding: const EdgeInsets.only(left: 12,right: 12),
             child: LinearProgressIndicator(
               borderRadius: BorderRadius.circular(7),
               value: profileCompletion,
               backgroundColor:Colors.orangeAccent.withOpacity(0.4),
               valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
               minHeight: 7,
             ),
           ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 11,right: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Profile Strength: Medium", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.6))),
                    Text("${(profileCompletion * 100).toStringAsFixed(1)}%", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                 width: width*1/1.1,
                 height: height*0.05/1,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                     border: Border.all(width: 1,color: Colors.black.withOpacity(0.2)),
                     color: colorss().bluecolor2
                 ),
                 child:InkWell(
                   onTap: (){
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Businessprofile()));
                   },
                   child: Center(child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("ADD MISSING DETAILS",style: TextStyle(fontWeight: FontWeight.bold,color: colorss().whitecolor1,fontFamily: 'Roboto',letterSpacing: 1.0,),),
                       SizedBox(width: width*0.02,),
                       Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15,),

                     ],
                   )),
                 ) ,
               )
            ],
          ),
    );


  }
}

