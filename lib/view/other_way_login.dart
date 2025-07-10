import 'package:cashbook/res/Components/button1.dart';
import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/view/dont_account.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtherWayLogin extends StatefulWidget {
  const OtherWayLogin({super.key});

  @override
  State<OtherWayLogin> createState() => _OtherWayLoginState();
}

class _OtherWayLoginState extends State<OtherWayLogin> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
  final image='assets/images/img_1.png';
    return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
          ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text("Welcome!",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),)),
          SizedBox(height: 6,),
          Center(child: Text("Login to auto backup your data securely",style: TextStyle(fontSize: 14,color: Colors.grey.shade800),),),
          SizedBox(height: height*0.05,),

          mobilenumbutton(),

          SizedBox(height: 12,),

          Center(child: Button1(width: width, height: height, value: 'SEND OTP ON WHATSAPP', bgcolor: colorss().greencolor1,image:image,
            imgwidth: 31,
            szbxwidth: 2 ,)),

          Padding(
            padding: const EdgeInsets.only(left: 15,top: 15,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("By creating an account, you agree to our Terms of Service &\nPrivacy Policy",style: TextStyle(fontSize: 13,color: Colors.grey.shade700),),
                SizedBox(height: 10,),
                Text("Why do we need your mobile number?Know More",style: TextStyle(fontSize: 13,color: Colors.grey.shade700),),
                SizedBox(height: height*0.6/1.1,),
                Dont_Account()

              ],
            ),
          ),

        ],
      ),
    );
  }
}



