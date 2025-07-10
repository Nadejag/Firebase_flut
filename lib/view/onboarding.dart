import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/promoslider.dart';
import 'package:cashbook/utils/routes/routes.dart';
import 'package:cashbook/utils/routes/routes_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
   final height=MediaQuery.sizeOf(context).height * 1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image(image: AssetImage('assets/images/cashbook.jpg',),width: 30,height: 32,),
            SizedBox(width: 5,),
            Text("CASHBOOK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.blueAccent.shade400),),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: TPromoSlider(),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RoutesNames.login);
                  },
                  child: Container(
                    height: height *0.05,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: colorss().bluecolor1,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                           Text("GET STARTED",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)
                      ],
                    ) ,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.verified_user_rounded,color: Colors.green.shade700,size: 22,),
                      SizedBox(width: 5,),
                      Text("CashBook is trusted by 3 million users",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
