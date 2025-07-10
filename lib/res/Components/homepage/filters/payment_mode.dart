import 'package:cashbook/res/Components/homepage/filterbottomheading.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/filterbutton.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/filtercolorbutton.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/filtersearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentMode extends StatefulWidget {
  const PaymentMode({super.key});

  @override
  State<PaymentMode> createState() => _PaymentModeState();
}
final List<String> checkoptions=[
  "No Payment Mode",
  "Cash",
  "Online"
];
class _PaymentModeState extends State<PaymentMode> {
  final Set<String> selectedopt={};
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        filterbottomHead(width: width, title: "Select Payment Mode Filter"),
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
        ...checkoptions.map((opt){
          List<Widget> children=[
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                width: double.infinity,
                height: height*0.06,
                decoration: BoxDecoration(
                  color: selectedopt.contains(opt)?Colors.blueAccent.withOpacity(0.17):null,
                  borderRadius:selectedopt.contains(opt)?BorderRadius.circular(4):null
                ),
                padding: EdgeInsets.symmetric(vertical: 0),
                child: Center(
                  child: CheckboxListTile(
                    title: selectedopt.contains(opt)?Text(opt,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8),fontSize: 14.6),):Text(opt,style: TextStyle(fontSize: 14.6),),
                      value: selectedopt.contains(opt),
                      activeColor: Colors.blue.shade800,
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
                  controlAffinity: ListTileControlAffinity.leading
                    ,),
                ),
              ),
            )
          ];
          if (opt == "No Payment Mode") {
            selectedopt.contains(opt) ?null :children.add(
              Divider(color: Colors.grey.withOpacity(0.4)),
            );
          }
          return Column(

            children: children
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
