import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusinessList extends StatelessWidget {
    BusinessList({super.key, required this.title,required this.trailicon,required this.subtitle,required this.leadicon});
  String title;
    String subtitle;
    Icon leadicon;
  Icon trailicon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(leadicon.icon,color: Colors.black.withOpacity(0.6),),
            title: Text(title,style: TextStyle(fontSize: 10.5),),
            subtitle:Text(subtitle,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.9)),) ,
            trailing: Icon(trailicon.icon,color: colorss().bluecolor3,),
          ),
        )
      ],
    );
  }
}


class BusinessList2 extends StatelessWidget {
  BusinessList2({super.key, required this.title,required this.trailicon,required this.subtitle, this.leadicon});
  String title;
  String subtitle;
  Icon? leadicon;
  Icon trailicon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: ListTile(
            leading: leadicon != null
                ? Icon(
              leadicon!.icon,
              color: Colors.black.withOpacity(0.6),
            )
                : null,
            title: Text(title,style: TextStyle(fontSize: 10.5, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.5)),),
            subtitle:Text(subtitle,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.3)),) ,
            trailing: Icon(trailicon.icon,color: colorss().bluecolor3,),
          ),
        )
      ],
    );
  }
}




class BusinessList3 extends StatefulWidget {
  BusinessList3({super.key, required this.title,required this.leadicon, required this.size});
  String title;

  Icon leadicon;

  final double size;

  @override
  State<BusinessList3> createState() => _BusinessList3State();
}

class _BusinessList3State extends State<BusinessList3> {
  bool isOn=false;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(widget.leadicon.icon
              ,color: colorss().bluecolor3.withOpacity(1),size: 21,),
            title: Text(widget.title,style: TextStyle(fontSize: 13,letterSpacing:0.5,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.5)),),
            trailing: IconButton(
                onPressed:(){
                      setState(() {
                        isOn= !isOn;
                      });
                } , icon: Icon(
              isOn ? Icons.toggle_on : Icons.toggle_off,color: isOn?colorss().bluecolor3:Colors.grey,size: widget.size,
            )),
          ),
        )
      ],
    );
  }
}



class BusinessList4 extends StatelessWidget {
  BusinessList4({super.key, required this.title,required this.trailicon,required this.leadicon, required this.size});
  String title;

  Icon leadicon;
  Icon trailicon;
 final double size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(leadicon.icon,color: colorss().bluecolor3.withOpacity(1),size: 21,),
            title: Text(title,style: TextStyle(fontSize: 13,letterSpacing:0.5,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.5)),),trailing: Icon(trailicon.icon,color: colorss().bluecolor3,size: size,),
          ),
        )
      ],
    );
  }
}