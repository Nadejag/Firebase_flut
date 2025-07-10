import 'package:cashbook/res/Components/button1.dart';
import 'package:cashbook/res/Components/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dont_Account extends StatelessWidget {
  const Dont_Account({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Center(
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(6)),
            ),
            builder: (context) {
              return Container(
                padding: const EdgeInsets.only(left: 0,right: 0,top: 16),
                width: double.infinity,
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        SizedBox(width: 11,),
                        Icon(Icons.close,size: 22,),
                        SizedBox(width: 13,),
                        Text("Send OTP via SMS?",style: TextStyle(fontWeight: FontWeight.w700,letterSpacing: 0.4),),
                      ],
                    ),
                    const Divider(),
                     SizedBox(height: height*0.02,),
                     Padding(
                       padding: const EdgeInsets.only(left: 14,right: 10),
                       child: Text("Confirm your mobile number before sending OTP Make\nsure you have good mobile network",style: TextStyle(fontSize: 13.5,color: Colors.grey.shade600,fontWeight: FontWeight.w700),),
                     ),
                    SizedBox(height: height*0.02,),

                    const mobilenumbutton(),
                    SizedBox(height: height*0.01/1.1,),
                    const Divider(),

                    Center(child: Button1(width: width, height: height, value: 'SEND OTP VIA SMS', bgcolor: colorss().bluecolor1, image: "assets/images/msg.png",
                      imgwidth: 15,
                      szbxwidth:7,)),
                   // Center(child: Button2(width: width, height: height, value: 'SEND OTP VIA SMS', bgcolor: colorss().bluecolor1, icon: Icons.mes,)),
                  ],
                ),
              );
            },
          );
        },
        
        
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
          decoration: BoxDecoration(
           // border: Border.all(color: Colors.blue.shade800),
            borderRadius: BorderRadius.circular(6),
            color: Colors.transparent,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "I DON'T HAVE WHATSAPP",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue.shade800,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.4,
                ),
              ),
              SizedBox(width: width * 0.02),
              const Icon(
                Icons.arrow_forward_ios_sharp,
                size: 12.2,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
