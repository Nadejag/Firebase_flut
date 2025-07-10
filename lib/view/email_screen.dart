import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/inputButtons.dart';
import 'package:cashbook/utils/routes/routes_names.dart';
import 'package:flutter/material.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Center(child: Text("Welcome!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
    SizedBox(height: 6,),
    Center(child: Text("Login/SignUp to backup your data securely",style: TextStyle(fontSize: 14,color: Colors.grey.shade800),),),
         SizedBox(height: height*0.05,),

            Container(
              width: width*0.9,
              height: height*0.05/1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8)
              ),
              child:
                EmailField()
            ),



            SizedBox(height: height*0.02,),

            InkWell(
              onTap: (){
               Navigator.pushNamed(context, RoutesNames.btmnv);
              },
              child: Container(
                width: width*0.9,
                height: height*0.05,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1,color: Colors.black.withOpacity(0.2)),
                  color: colorss().bluecolor1
                ),
                child:Center(child: Text("SEND OTP",style: TextStyle(fontWeight: FontWeight.bold,color: colorss().whitecolor1,fontFamily: 'Roboto',letterSpacing: 1.0,),)) ,
              ),
            ),



    SizedBox(height: height*0.02,),
    Padding(
    padding: const EdgeInsets.only(left: 14),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text("By creating an account you agree to Terms of Service &\nPrivacy Policy",style: TextStyle(fontSize: 14,color: Colors.grey.shade800)),
    ],
    ),
          ]),

    )]));
  }
}
