import 'package:cashbook/utils/routes/routes_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Welcome",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),)),
          SizedBox(height: 6,),
          Center(child: Text("Login/SignUp to backup your data securely",style: TextStyle(fontSize: 14,color: Colors.grey.shade800),),),
         SizedBox(height: height*0.05,),
          Container(
           width: width*0.9,
            height: height*0.05/1.1,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
            border: Border.all(width: 1,color: Colors.black.withOpacity(0.2)),
            ),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image(image: AssetImage('assets/icons/gooleicon.png'),width: 21,),
                  SizedBox(width: width*0.02,),
                  Text("CONTINUE WITH GOOGLE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue.shade900,fontFamily: 'Roboto',letterSpacing: 1.0,),)
              ],),
            ) ,
          SizedBox(height: height*0.02,),
          Container(
            width: width*0.9,
            height: height*0.05/1.1,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
              border: Border.all(width: 1,color: Colors.black.withOpacity(0.2)),
            ),
            child:InkWell(
              onTap: (){
                Navigator.pushNamed(context, RoutesNames.emailsc);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email_outlined,size: 24,color: Colors.blue.shade900,),
                SizedBox(width: width*0.02,),
                Text("CONTINUE WITH EMAIL",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue.shade900,fontFamily: 'Roboto',letterSpacing: 1.0,),)
              ],),
            ) ,
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
                 SizedBox(height:height*0.6/1.1 ,),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, RoutesNames.othwaylog);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("OTHER WAYS TO LOGIN",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.blue.shade900,fontFamily: 'Roboto',letterSpacing: 1.0,)),
                      SizedBox(width: width*0.03,),
                      Icon(Icons.arrow_forward_ios_sharp,size: 15,)
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
