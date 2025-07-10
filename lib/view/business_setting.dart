import 'package:cashbook/model/settinglist.dart';
import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/widgets/appbarcard.dart';
import 'package:cashbook/res/Components/widgets/light_text.dart';
import 'package:cashbook/view/business_setting.dart';
import 'package:flutter/material.dart';

class BusinessSetting extends StatefulWidget {
  const BusinessSetting({super.key});

  @override
  State<BusinessSetting> createState() => _BusinessSettingState();
}

class _BusinessSettingState extends State<BusinessSetting> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarCard(width: width, title: '"Business Team"',),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         lighttext(height: height, text: 'General',),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             settingslists(title: "Change Owner", subtitle: 'current Owner: You', leadicon:Icons.change_circle, trailicon:Icons.arrow_forward_ios_sharp, color: colorss().redcolor1,colorbg:colorss().redcolor2),
             settingslists(title: "Delete Business", subtitle: 'Delete all the data of this business\npermantenly', leadicon: Icons.delete_outline, trailicon:Icons.arrow_forward_ios_sharp, color: colorss().redcolor1,colorbg: colorss().redcolor2,)
           ],
            ),
          )
        ],
      ),
    );
  }
}



