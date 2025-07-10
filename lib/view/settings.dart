import 'dart:io';

import 'package:cashbook/model/settinglist.dart';
import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/profile_h1.dart';
import 'package:cashbook/res/Components/settings/logoutoptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});
  @override
  State<Settings> createState() => _SettingsState();
}
const String message = '''
Namaste​, I am using the #1 cash management app - CashBook.

https://cbook.page.link/app-share

It is 100% Safe & Secure. Download Now!

https://cbook.page.link/app-share
''';
Future<void> shareImageAndText() async{
try{
  final ByteData bytes=await rootBundle.load("assets/images/adsphoto.png");
  final Uint8List list=bytes.buffer.asUint8List();

  final tempDir =await getTemporaryDirectory();
  final file=await File("${tempDir.path}/shared_image.png").create();
  await file.writeAsBytes(list);

  await Share.shareXFiles(
      [XFile(file.path)],
      text: message,
      subject: "Shared from CashBook"
  );
}
catch (e) {

  print("Error while sharing: $e");
}
}
class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar:AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false ,
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileStrengthScreen(),
              SizedBox(height: height*0.02,),

              businesssetting(height: height),

              SizedBox(height: height*0.01,),
              Text("\t\t\tGeneral Settings",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black45),),
            SizedBox(height: height*0.01,),
              GeneralSetting(height: height),
            SizedBox(height: height*0.01,),
            Text("\t\t\tDo more with cashBook",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black45),),
            SizedBox(height: height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  InkWell(
                      onTap: (){
                        showDialog(context: context, builder: (_)=>Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14,right: 14),
                            child: Container(
                              width: double.infinity,
                              height: height*0.36,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white,
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Icon(Icons.close,size: 24,),
                                        )),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                         Text(
                                          "Now use CashBook on your Laptop/",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black.withOpacity(0.55),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                              "Computer",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black.withOpacity(0.55),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                       SizedBox(height: height*0.017,),
                                        Center(child: Image(image: AssetImage("assets/images/computerlaptop.png"),width: width*0.5,))
                                       , SizedBox(height: height*0.015,),
                                        Text(
                                          "Visit CashBook on",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black.withOpacity(0.55),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: height*0.02,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.symmetric(vertical: 6.5, horizontal: 24),
                                              decoration: BoxDecoration(
                                                color:Colors.grey.withOpacity(0.3),
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              child: Text(
                                                "web.cashbook.in",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.black.withOpacity(0.6),
                                                  letterSpacing: 0.6,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width:width*0.05),
                                            InkWell(
                                              onTap: () {

                                                Clipboard.setData(ClipboardData(text: "web.cashbook.in"));

                                                ScaffoldMessenger.of(context).showSnackBar(
                                                  SnackBar(
                                                    backgroundColor: Colors.transparent, // Make SnackBar itself transparent
                                                    elevation: 0, // Remove shadow
                                                    behavior: SnackBarBehavior.floating, // Make it floating
                                                    content: Center(
                                                      child: Container(
                                                        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                                                        decoration: BoxDecoration(
                                                          color: Colors.black.withOpacity(0.8),
                                                          borderRadius: BorderRadius.circular(6),
                                                        ),
                                                        child: const Text(
                                                          "Copied",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    duration: const Duration(seconds: 2),
                                                  ),
                                                );

                                                ScaffoldMessenger.of(context).showSnackBar(
                                                  SnackBar(
                                                    backgroundColor: Colors.transparent, // Make SnackBar itself transparent
                                                    elevation: 0, // Remove shadow
                                                  //  behavior: SnackBarBehavior.floating, // Make it floating
                                                    content: Center(
                                                      child: Align(
                                                        alignment: Alignment.topCenter,
                                                        child: Container(
                                                          margin: const EdgeInsets.only(top: 50, left: 50, right: 50),
                                                          //padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                                                          decoration: BoxDecoration(
                                                            color: Colors.black.withOpacity(0.8),
                                                            borderRadius: BorderRadius.circular(6),
                                                          ),
                                                          child: const Text(
                                                            "Copied",
                                                            style: TextStyle(
                                                              color: Colors.white,
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    duration: const Duration(seconds: 2),
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                padding: const EdgeInsets.symmetric(vertical: 6.5, horizontal: 22),
                                                decoration: BoxDecoration(
                                                  color: colorss().bluecolor3,
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                child: const Text(
                                                  "Copy",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ));
                      },
                      child: Image(image: AssetImage("assets/images/pc.png"),width: width*0.5/1.1,)),
                SizedBox(width: width*0.03,),
                InkWell(
                    onTap: shareImageAndText,
                    child: Image(image: AssetImage("assets/images/share.png"),width: width*0.5/1.1,)),
              ],
            ),
            SizedBox(height: height*0.02,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Logoutoptions()));
              },
              child: Container(
                height: height*0.05,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.logout,color: Colors.red.shade700,),
                  title: Text("Logout",style: TextStyle(color: Colors.red.shade700),),
                ),
              ),
            ),
            SizedBox(height: height*0.03,),
            InkWell(
                onTap: ()=>launchUrl(Uri.parse("https://youtube.com/@cashbookapp?si=8bgOWRoIcKC2-s91")),
                child: Image(image: AssetImage("assets/images/subscribe.png"))),
            SizedBox(height: height*0.02,),
            Text("\t\t\tOur Promise",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black45),),
            Image(image: AssetImage("assets/images/promiseim.png"),width: width*0.9,),
            SizedBox(height: height*0.01,),
            Text("\t\t\tApp Version 6.10.0",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black45),),
            SizedBox(height: height*0.06,),
          ],
        ),
      ),
    );
  }
}







