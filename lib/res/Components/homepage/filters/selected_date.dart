import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/homepage/filterbottomheading.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/filterbutton.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/filtercolorbutton.dart';
import 'package:flutter/material.dart';

class SelectedDate extends StatefulWidget {
  const SelectedDate({super.key});

  @override
  State<SelectedDate> createState() => _SelectedDateState();
}

// 👇 options list should start with lowercase by convention
List<String> options = [
  "All Time",
  "Today",
  "Yesterday",
  "This Month",
  "Last Month",
  "Single Day",
  "Date Range"
];

class _SelectedDateState extends State<SelectedDate> {
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height * 1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        currentOption=="All Time"
            ? filterbutton(height: height, width: width)
            : filterbuttoncolor(height: height, width: width),
      ],
    );
  }
}


