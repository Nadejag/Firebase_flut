import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/homepage/filterbottomheading.dart' show filterbottomHead;
import 'package:cashbook/res/Components/homepage/filters/widget/filterbutton.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/filtercolorbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntryType extends StatefulWidget {
  const EntryType({super.key});

  @override
  State<EntryType> createState() => _EntryTypeState();
}
List<String> options = [
  "All",
  "Cash In",
  "Cash Out",
];
class _EntryTypeState extends State<EntryType> {
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Column(
      children: [
        filterbottomHead(width: width, title: "Select Date Filter",),
        Divider(color: Colors.grey.withOpacity(0.3)),
        ...options.map((opt) {
          return Container(
            decoration: BoxDecoration(
                color: currentOption.contains(opt)?Colors.blueAccent.withOpacity(0.17):null,
                borderRadius:currentOption.contains(opt)?BorderRadius.circular(4):null
            ),
            child: ListTile(
              title:currentOption.contains(opt)?Text(opt,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8),fontSize: 14.6),):Text(opt,style: TextStyle(fontSize: 14.6),),
              leading: Radio(
                activeColor: colorss().bluecolor3,
                value: opt,
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                  });
                },
              ),
            ),
          );
        }).toList(),
        Spacer(),
        Divider(color: Colors.grey.withOpacity(0.3),),
        SizedBox(height: height*0.01,),
        currentOption=="All"
            ? filterbutton(height: height, width: width)
            : filterbuttoncolor(height: height, width: width),
      ],
    );
  }
}
