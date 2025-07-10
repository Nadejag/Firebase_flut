import 'package:cashbook/res/Components/homepage/filterbottomheading.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/filterbutton.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/filtercolorbutton.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/filtersearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}
final List<String> options = [
  "No Category",
  "Salary",
  "Profit",
  "Deposit",
  "Sale"
];
class _CategoryState extends State<Category> {
  final Set<String> selectedopt = {};
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        filterbottomHead(width: width, title: "Select Category Filter"),
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
         ...options.map((opt){
              List<Widget>children=[
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Container(
                    decoration: BoxDecoration(
                        color: selectedopt.contains(opt)?Colors.blueAccent.withOpacity(0.17):null,
                        borderRadius:selectedopt.contains(opt)?BorderRadius.circular(4):null
                    ),
                    child: CheckboxListTile(
                      title:
                      selectedopt.contains(opt)?Text(opt,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8),fontSize: 14.6),):Text(opt,style: TextStyle(fontSize: 14.6),),
                      activeColor: Colors.blue.shade800,
                      value: selectedopt.contains(opt),
                        onChanged: (bool? value){
                        setState(() {
                          if(value==true){
                            selectedopt.add(opt);
                          }
                          else{
                            selectedopt.remove(opt);
                          }
                        });
                        },
                    controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                )
              ];
              if (opt == "No Category") {
                selectedopt.contains(opt) ?null :children.add(
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
        selectedopt.isEmpty
            ? filterbutton(height: height, width: width)
            : filterbuttoncolor(height: height, width: width),
      ],
    );
  }
}
