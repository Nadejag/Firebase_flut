import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/homepage/filterbottomheading.dart';
import 'package:cashbook/res/Components/homepage/filters/contact.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/filterbutton.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/filtercolorbutton.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/filtersearch.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final List<String> options = [
    "No Contact",
    "Dur",
    "Nade"
  ];

  final Set<String> selectedOptions = {};

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        filterbottomHead(width: width, title: "Select Contact Filter"),
        Divider(color: Colors.grey.shade400),
        SizedBox(height: height*0.017,),
        filtersearchbar(height: height),
     SizedBox(height: height*0.02,),
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(
            "Entries by",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.45),
              letterSpacing: 0.5,
            ),
          ),
        ),

        ...options.map((opt) {
          List<Widget> children = [
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                decoration: BoxDecoration(
                    color: selectedOptions.contains(opt)?Colors.blueAccent.withOpacity(0.17):null,
                    borderRadius:selectedOptions.contains(opt)?BorderRadius.circular(4):null
                ),
                child: CheckboxListTile(
                  title:
                  selectedOptions.contains(opt)?Text(opt,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8),fontSize: 14.6),):Text(opt,style: TextStyle(fontSize: 14.6),),
                  activeColor: Colors.blue.shade800,
                  value: selectedOptions.contains(opt),
                  onChanged: (bool? value) {
                    setState(() {
                      if (value == true) {
                        selectedOptions.add(opt);
                      } else {
                        selectedOptions.remove(opt);
                      }
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
            ),
          ];

          // Add divider only after "No Contact"
          if (opt == "No Contact") {
            selectedOptions.contains(opt) ?null :children.add(
              Divider(color: Colors.grey.withOpacity(0.4)),
            );

          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,

          );
        }).toList(),

    Spacer(),
    Divider(color: Colors.grey.withOpacity(0.3),),
    SizedBox(height: height*0.01,),
        selectedOptions.isEmpty
            ? filterbutton(height: height, width: width)
            : filterbuttoncolor(height: height, width: width),
      ],

    );
  }
}



