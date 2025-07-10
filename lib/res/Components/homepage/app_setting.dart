
import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/settings/business_list.dart';
import 'package:cashbook/res/Components/widgets/appbarcard.dart';
import 'package:cashbook/res/Components/widgets/light_text.dart';
import 'package:cashbook/view/business_setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSetting extends StatefulWidget {
  const AppSetting({super.key});

  @override
  State<AppSetting> createState() => _AppSettingState();
}

class _AppSettingState extends State<AppSetting> {
  bool appLock = false;
  bool groupNotifications = false;
  bool amountCalculator = false;
  bool darkTheme = false;
  @override
  Widget build(BuildContext context) {


    bool isOn=false;
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      backgroundColor: colorss().bgColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100) , child: AppBarCard(width: width, title: "App Settings")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          lighttext(height: height, text: 'Data Security',),
         Container(
           color: Colors.white,
           child: Column(
             children: [
               BusinessList4(title: "Data Backup", trailicon: Icon(Icons.arrow_forward_ios_sharp), leadicon: Icon(Icons.backup_outlined), size: 13.8,),
               Divider(color: Colors.grey.shade300,),
               BusinessList3(title: "App Lock",leadicon: Icon(Icons.lock_outline), size: 45 ),
             ],
           ),
         ),
          lighttext(height: height, text: 'features',),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                BusinessList3(title: "Group Book Notifications",  leadicon: Icon(Icons.notifications_none_outlined), size: 45,),
                Divider(color: Colors.grey.shade300,),
                BusinessList3(title: "Amount Field Calculator",leadicon: Icon(Icons.calculate_outlined), size:45 )
              ],
            ),
          ),

          lighttext(height: height, text: 'General',),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                BusinessList3(title: "Dark Theme", leadicon: Icon(Icons.dark_mode_outlined), size: 45,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
