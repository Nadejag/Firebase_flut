import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/countrycode.dart';
import 'package:cashbook/res/Components/inputButtons.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {

  Button1({
    super.key,
    required this.width,
    required this.height,
    required this.value,
    required this.bgcolor,
    required this.image, required this.imgwidth, required this.szbxwidth
   // required this.color
  });

  final double width;
  final double height;
  Color bgcolor;
  final String image;
  final double imgwidth;
  final double szbxwidth;
  //Color color;
  String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width*0.9,
      height: height*0.05/1,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(width: 1,color: Colors.black.withOpacity(0.2)),
          color: bgcolor
      ),
      child:Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('${image}'),width: imgwidth,),
          SizedBox(width: szbxwidth,),
          Text(value,style: TextStyle(fontWeight: FontWeight.bold,color: colorss().whitecolor1,fontFamily: 'Roboto',letterSpacing: 1.0,),),
        ],
      )) ,
    );
  }
}
class Button2 extends StatelessWidget {

  Button2({
    super.key,
    required this.width,
    required this.height,
    required this.value,
    required this.bgcolor,  this.icon,
    // required this.color
  });

  final double width;
  final double height;
  Color bgcolor;
  //Color color;
  String value;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:15 ),
      child: Container(
        width: width*0.9,
        height: height*0.05/1,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
            border: Border.all(width: 1,color: Colors.black.withOpacity(0.2)),
            color: bgcolor
        ),
        child:Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
            Icon(icon,),
          ],
                       
            SizedBox(width: width*0.02,),
            Text(value,style: TextStyle(fontWeight: FontWeight.bold,color: colorss().whitecolor1,fontFamily: 'Roboto',letterSpacing: 1.0,),),
          ],
        )),
      ),
    );
  }
}


class mobilenumbutton extends StatefulWidget {
  const mobilenumbutton({
    super.key,
  });

  @override
  State<mobilenumbutton> createState() => _mobilenumbuttonState();
}

class _mobilenumbuttonState extends State<mobilenumbutton> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
    String? selectedDialCode = "+92";
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Row(
        children: [


          Expanded(
            flex: 2,
            child: InkWell(
            onTap: (){
            },
              child: Container(
                width: width*0.03,
                height: height*0.06/1.3,
                decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.black45.withOpacity(0.2),
                     width: 1.1
                   ),
                    borderRadius: BorderRadius.circular(3)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5,right: 3),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CountryCodeScreen(),
                      Icon(Icons.arrow_drop_down,size: 21,),
                    ],
                  ),
                ),
              ),
            ),
          ),


          SizedBox(width: 10,),
          Expanded(
            flex: 6,

              child: mobilenumfield()

          ),

        ],
      ),
    );
  }
}

