import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/settings/business_list.dart';
import 'package:cashbook/res/Components/widgets/appbarcard.dart';
import 'package:cashbook/res/Components/widgets/light_text.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarCard(width: width, title: 'About CashBook'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          lighttext(height: height, text: 'Data Security'),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    launchUrl(Uri.parse("https://cashbook.in/legal/privacy/"));
                  },
                  child: BusinessList4(
                    title: "Privacy Policy",
                    trailicon: Icon(Icons.arrow_forward_ios_sharp),
                    leadicon: Icon(Icons.privacy_tip_outlined),
                    size: 13.8,
                  ),
                ),
                Divider(color: Colors.grey.shade300),
                InkWell(
                onTap: (){
                launchUrl(Uri.parse("https://cashbook.in/legal/terms/"));
                },
                  child: ListTile(
                    leading: Text(
                      '123',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: colorss().bluecolor3, // or your custom color
                        fontSize: 13,
                      ),
                    ),
                    title: Text('Terms & Conditions',style: TextStyle(fontSize: 13,letterSpacing:0.5,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.5))),
                    trailing: Icon(Icons.arrow_forward_ios,size: 13.8,),
                  ),
                )
              ],
            ),
          ),
          lighttext(height: height, text: 'About'),
          InkWell(
            onTap: (){
              launchUrl(Uri.parse("https://cashbook.in/about-us/"));
            },
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  BusinessList4(
                    title: "About Us",
                    leadicon: Icon(Icons.info_outline),
                    trailicon:  Icon(Icons.arrow_forward_ios), size: 13.8,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
