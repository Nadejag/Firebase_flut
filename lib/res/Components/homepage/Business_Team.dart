import 'package:cashbook/res/Components/button1.dart' show Button2;
import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/homepage/heading_of_request.dart';
import 'package:cashbook/res/Components/settings/businessprofile.dart';
import 'package:flutter/material.dart';

class BusinessTeam extends StatelessWidget {
  const BusinessTeam({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Card(
            shape: RoundedRectangleBorder(),
            elevation: 1, // shadow effect
            color: Colors.white,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black.withOpacity(0.7),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(width: width*0.04,),
                Text(
                  "Business Team",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(1),  // Space inside the rectangle
                  decoration: BoxDecoration(
                    //color: colorss().bluecolor3.withOpacity(0.2),  // Light background color
                      borderRadius: BorderRadius.circular(100),        // Rounded rectangle corners
                      border: Border.all(
                          color: colorss().bluecolor3,
                          width: 1.3
                      )
                  ),
                  child: Icon(
                    Icons.question_mark,
                    size: 15,
                    color: colorss().bluecolor3,
                  ),
                ),
                SizedBox(width: width*0.02,)
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 8,right: 10),
            child: heading(height: height, width: width),
          ),
          SizedBox(height: height*0.1,),
          Image(image: AssetImage("assets/images/Buss_tm.png")),
         Spacer(),
          Divider(height: 2,),
          Container(
            width: double.infinity,
            height: height*0.2/1.6,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8 ,right: 8),
                  child: Row(
                    children: [
                     Icon(Icons.info,color: Colors.deepPurple.shade800,),
                      SizedBox(
                        width: width*0.01,
                      ),
                      Text("View roles & permissions in detaiol",style: TextStyle(color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.bold,fontSize: 10.4,),),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_sharp,size: 15,)
                    ],
                  ),
                ),
               Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    width: double.infinity,
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
                          Icon(Icons.person_add_outlined,color: Colors.white.withOpacity(0.9),),
                          SizedBox(width: width*0.03,),
                          Text("ADD MISSING DETAILS",style: TextStyle(fontWeight: FontWeight.bold,color: colorss().whitecolor1.withOpacity(0.9),fontFamily: 'Roboto',letterSpacing: 1.0,),),


                        ],
                      )),
                    ) ,
                  ),
                ),
                SizedBox(
                  height: height*0.02,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

