import 'package:cashbook/res/Components/button1.dart' show Button2;
import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/settings/emailadress.dart';
import 'package:cashbook/res/Components/widgets/appbarcard.dart';
import 'package:flutter/material.dart';

class Changeemail extends StatelessWidget {
  const Changeemail({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarCard(width: width, title: 'Change Email',color:colorss().bluecolor3),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image(image: AssetImage("assets/images/changeemail.png"),width: width*0.9,)),

          Padding(
            padding: const EdgeInsets.only(left: 13,top: 29),
            child: Text("Changing email address will transfer all your\ndata from old email to new email address",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13,right: 12),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.circle,
                      color: Colors.grey.withOpacity(0.9), size: 9),
                  title:  Text(
                    "Your data is linked to your email address",
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.5)),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.circle,
                      color: Colors.grey.withOpacity(0.9), size: 9),
                  title:  Text(
                    "You will need to use your new email for login to see\nyour data after you change your email",
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.5)),
                  ),
                ),
              ],

            ),
          ),
          Spacer(),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Emailadress()));
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Align(
                  alignment: Alignment.center,
                  child: Button2(width: width, height: height, value: 'NEXT', bgcolor: colorss().bluecolor3.withOpacity(0.9))),
            ),
          )
        ],
      ),
    );
  }
}
