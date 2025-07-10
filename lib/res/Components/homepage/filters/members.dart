import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/homepage/filterbottomheading.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/filtersearch.dart';
import 'package:cashbook/res/Components/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Members extends StatefulWidget {
  const Members({super.key});

  @override
  State<Members> createState() => _MembersState();
}
final List<String>options=[
  "qabool Mohammed"
];

class _MembersState extends State<Members> {
  String currentOption = options[0];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        filterbottomHead(width: width, title: "Select Member Filter",),
       Divider(color: Colors.grey.shade400,),
        filtersearchbar(height: height),
        SizedBox(height: height*0.02,),
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text("Entries by",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.45),letterSpacing: 0.5),),
        ),
        ...options.map((opt){
          return Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Container(
              decoration: BoxDecoration(
                  color: currentOption.contains(opt)?Colors.blueAccent.withOpacity(0.17):null,
                  borderRadius:currentOption.contains(opt)?BorderRadius.circular(4):null
              ),
              child: ListTile(
                title: Text(opt,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.7),fontSize: 15),),
                leading: Radio(
                    value:opt ,
                    groupValue: currentOption,
                    onChanged: (value){
                      setState(() {
                        currentOption=value.toString();
                      });
                    }),
              ),
            ),
          );
        }).toList()
      ],
    );
  }
}
