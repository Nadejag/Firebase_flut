import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/homepage/Business_Team.dart';
import 'package:cashbook/res/Components/homepage/app_setting.dart';
import 'package:cashbook/res/Components/logos&buttons/Businesslog.dart';
import 'package:cashbook/res/Components/settings/about.dart';
import 'package:cashbook/res/Components/settings/requests.dart';
import 'package:cashbook/res/Components/settings/yourprofile.dart';
import 'package:cashbook/view/business_setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class settingslists extends StatelessWidget {
  const settingslists({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadicon,
    this.trailicon,
    required this.color,
    required this.colorbg,
  });

  final String title;
  final String subtitle;
  final IconData leadicon;
  final IconData? trailicon;
  final Color color;
  final Color colorbg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13.9,
              letterSpacing: 0.6,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              letterSpacing: 0.6,
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black45.withOpacity(0.4),
            ),
          ),
          leading: Container(
            width: 40,
            height: 40,
            child: CircleAvatar(
              backgroundColor: colorbg.withOpacity(0.2),
              child: Icon(
                leadicon,
                size: 20,
                color: color,
              ),
            ),
          ),
          trailing: trailicon != null
              ? Icon(
            trailicon,
            size: 14,
            color: color,
          )
              : null,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 65, right: 25),
          child: Divider(
            color: Colors.black45.withOpacity(0.1),
          ),
        ),
      ],
    );
  }
}

class settingslists2 extends StatelessWidget {
  const settingslists2({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadicon,
    this.trailicon,
    required this.color,
    required this.colorbg,
  });

  final String title;
  final String subtitle;
  final IconData leadicon;
  final IconData? trailicon;
  final Color color;
  final Color colorbg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13.9,
              letterSpacing: 0.6,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              letterSpacing: 0.6,
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black45.withOpacity(0.4),
            ),
          ),
          leading: Container(
            width: 40,
            height: 40,
            child: CircleAvatar(
              backgroundColor: colorbg.withOpacity(0.2),
              child: Icon(
                leadicon,
                size: 20,
                color: color,
              ),
            ),
          ),
          trailing: trailicon != null
              ? Icon(
            trailicon,
            size: 14,
            color: color,
          )
              : null,
        ),

      ],
    );
  }
}
// class settingslists extends StatelessWidget {
//   const settingslists({
//     super.key, required this.title, required this.subtitle, required this.leadicon,  this.trailicon, required this.color, required this.colorbg,
//   });
//   final String title;
//   final String subtitle;
//   final  Icon leadicon;
//   final Icon? trailicon;
//   final Color colorbg;
//   final Color color;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ListTile(
//           title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13.9,letterSpacing: 0.6,),),
//           leading:Container(
//             width: 34,
//             height: 34,
//             child: CircleAvatar(
//               backgroundColor: colorbg.withOpacity(0.2),
//               child: Icon(
//                   leadicon.icon
//                       ,size: 24,
//                 color: color.withOpacity(1),
//               ),
//             ),
//           ) ,
//           subtitle:Text(subtitle,style: TextStyle(letterSpacing: 0.6,fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black45.withOpacity(0.4)),) ,
//           trailing: trailicon != null ? Icon(
//             trailicon,size: 14,
//             color: color,
//           ):null,
//       //     Icon(
//       //     if (icon != null)...[
//       //       Spacer(),
//       //   Padding(
//       //     padding: const EdgeInsets.only(right: 10),
//       //     child: Icon(
//       //       icon,
//       //       color: color,
//       //     ),
//       //   ),
//       // ],
//       //         trailicon.icon
//       //       ,size: 14,
//       //     ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 65,right: 25),
//           child: Divider(color: Colors.black45.withOpacity(0.1),),
//         )
//       ],
//     );
//
//   }
// }




class businesssetting extends StatelessWidget {
  const businesssetting({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height: height*0.3/1,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: height*0.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessTeam()));
              },
              child: settingslists(title: "Business Team", subtitle: 'Add,remove or change role', leadicon: Icons.supervisor_account_outlined, trailicon:Icons.arrow_forward_ios_sharp, color: colorss().bluecolor3,colorbg: colorss().bluecolor2,)),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestScreen()));

              },
              child: settingslists(title: "Requests", subtitle: 'Approve or deny request', leadicon: Icons.fact_check, trailicon: Icons.arrow_forward_ios_sharp, color: colorss().bluecolor3,colorbg: colorss().bluecolor2)),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessSetting()));
              },
              child: settingslists(title: "Business Settings", subtitle: 'Settings,specific to this business', leadicon:Icons.business, trailicon:Icons.arrow_forward_ios_sharp, color: colorss().bluecolor3,colorbg: colorss().bluecolor2)),],
      ),
    );
  }
}





class Settings_Portfolio extends StatelessWidget {
  const Settings_Portfolio({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height: height*0.2/1.1,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cameralogo(width: width, height: height, color: Colors.black45.withOpacity(0.4)),
              SizedBox(width: width*0.02),
              Text("\nComputer",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13.9,letterSpacing: 0.6,),),
              Spacer(),
              Icon(Icons.edit_outlined),
              SizedBox(width: width*0.02,),
            ],
          ),
          Spacer(),
          Container(
            width: width*0.9,
            height: height*0.05/1,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                border: Border.all(width: 1,color: Colors.black.withOpacity(0.2)),
                color: colorss().bluecolor2
            ),
            child:Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ADD MISSING DETAILS",style: TextStyle(fontWeight: FontWeight.bold,color: colorss().whitecolor1,fontFamily: 'Roboto',letterSpacing: 1.0,),),
                SizedBox(width: width*0.02,),
                Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15,),

              ],
            )) ,
          ),
          SizedBox(height: height*0.02,)
        ],
      ),
    );
  }
}




class GeneralSetting extends StatelessWidget {
  const GeneralSetting({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height: height*0.3/1,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: height*0.0,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AppSetting()));
              },
              child: settingslists(title: "App Settings", subtitle: "Language,Theme,Security,Backup", leadicon:Icons.app_settings_alt, trailicon:Icons.arrow_forward_ios_sharp, color: colorss().bluecolor3,colorbg: colorss().bluecolor2)),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Yourprofile()));
              },
              child: settingslists(title: "Your Profile", subtitle: 'Name,Mobile Number,Email', leadicon:Icons.account_circle_outlined, trailicon:Icons.arrow_forward_ios_sharp, color: colorss().bluecolor3,colorbg: colorss().bluecolor2)),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
              },
              child: settingslists(title: "About CashBook", subtitle: 'Privacy policy,T&C,About us', leadicon: Icons.info_outline, trailicon:Icons.arrow_forward_ios_sharp, color: colorss().bluecolor3,colorbg: colorss().bluecolor2)),],
      ),
    );
  }
}