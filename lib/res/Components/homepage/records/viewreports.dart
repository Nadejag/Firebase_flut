import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/downloadbutton.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/showpreveiewbutton.dart';
import 'package:cashbook/res/Components/widgets/appbarcard.dart';
import 'package:cashbook/res/document/pdf.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:pdf/widgets.dart' as pw;

class Viewreports extends StatefulWidget {
  const Viewreports({super.key});

  @override
  State<Viewreports> createState() => _ViewreportsState();
}
final List<Map<String, String>> filters = [
  {'label': 'Duration', 'value': 'All Time',},
  {'label': 'Entry Type', 'value': 'All'},
  {'label': 'Category', 'value': 'All'},
  {'label': 'Contact', 'value': 'All'},
  {'label': 'Payment Mode', 'value': 'All'},
  {'label': 'Search Term', 'value': 'None'},
];

final List<Map<String, String>> Repotypes = [
  {
    "title": "All Entries Report",
    "subtitle": "List of all entries and details",
  },
  {"title": "Day-wise summary", "subtitle": "Day-wise total in,out &balance"},
  {
    "title": "Contact-wise summary",
    "subtitle": "Contact-wise total in,out & balance",
  },
  {
    "title": "Category-wise summary",
    "subtitle": "Income & expenses of all categories",
  },
  {
    "title": "Payment Modes summary",
    "subtitle": "Income & expenses by all payment modes",
  },
];

class _ViewreportsState extends State<Viewreports> {
  String selectedReport = 'All Entries Report';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      backgroundColor: colorss().bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarCard(width: width, title: 'Generate Report',icon: Icons.settings_outlined,color:colorss().bluecolor3),
      ),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 12, top: 20),
            child: Text(
              "Report will be generated for",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Wrap(
              spacing: 70,
              runSpacing: 8,
              children: filters.map((filter) {
                return GestureDetector(
                  onTap: () {
                    // Handle filter tap
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        filter['label']!,
                        style:  TextStyle(fontSize: 11, color: Colors.black.withOpacity(0.7),fontWeight:FontWeight.w600,letterSpacing: 0.4),
                      ),
                      Text(
                        filter['value']!,
                        style:  TextStyle(fontSize: 13, color: colorss().bluecolor3, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Select Report Type",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.9)),),
          ),
          SizedBox(height: height*0.02,),
          ...Repotypes.map((repo) {
            return Padding(
              padding: const EdgeInsets.only(left: 13,right: 13),
              child: Container(
                decoration: BoxDecoration(
                  color:
                      selectedReport == repo['title']
                          ? colorss().bluecolor3.withOpacity(0.17)
                          : null,
                  borderRadius:
                      selectedReport == repo['title']
                          ? BorderRadius.circular(4)
                          : null,
                ),
                child: RadioListTile(
                  activeColor: colorss().bluecolor3,
                  title: Text(
                    repo['title']!,
                    style: TextStyle(
                      fontSize: 14.4,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.6,
                    ),
                  ),
                  subtitle: Text(
                    repo["subtitle"]!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.7,
                      fontSize: 11,
                      color: Colors.black.withOpacity(0.47),
                    ),
                  ),
                  value: repo['title'],
                  groupValue: selectedReport,
                  onChanged: (val) {
                    setState(() {
                      selectedReport = val.toString();
                    });
                  },
                ),
              ),
            );
          }),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 13,right: 13),
            child: Row(
              children: [
                Expanded(
                  child:Container(
                    width: double.infinity,
                     height: height*0.048,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        width: 0.9,
                        color: colorss().bluecolor3
                      )
                    ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                               const Icon(Icons.grid_on,color: Colors.indigo,),
                           SizedBox(width: width*0.02,),
                                Text('GENERATE EXCEL',style: TextStyle(color:colorss().bluecolor3 ,fontWeight: FontWeight.bold,letterSpacing: 1),),
                                ],
                            ),
                     )
                ),
              ],
            ),
          ),
           SizedBox(height:height*0.02 ),
          InkWell(
            onTap: (){
              showModalBottomSheet(context: context, builder: (context){
                return Container(
                  width: double.infinity,
                  height: height*0.24,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12,top: 13),
                              child: Row(
                                children: [
                                  InkWell(
                                      onTap: (){
                                        Navigator.pop(context);
                                      },
                                      child: Icon(Icons.close,size: 20,)),
                                  SizedBox(width: width*0.02,),
                                  Text("PDF report",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.9)),)
                                ],
                              ),
                            ),
                            Divider(),
                            showpreveiewbutton(height: height, width: width),
                            InkWell(
                                onTap: (){
                                      final statement = MonthlyStatement(
                                        name: "Ali",
                                        phone: "03001234567",
                                        email: "ali@example.com",
                                        month: "June",
                                        year: "2025",
                                        totalEarning: 5000,
                                        movingCost: 1000,
                                        travelCost: 500,
                                        serviceFee: 300,
                                        gst: 150,
                                        tips: 200,
                                        refund: 50,
                                        numberOfJobs: 12,
                                      );

                                      printStatementPdf(context, statement);
                                    },
                                child: donloadbutton(height: height, width: width))
                          ],
                  ),
                );
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 13,right: 13),
              child: Row(
                children: [
                  Expanded(
                    child:Container(
                      width: double.infinity,
                      height: height*0.048,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                         color: colorss().bluecolor3.withOpacity(0.9)
                      ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                  const Icon(Icons.picture_as_pdf,color: Colors.white,),
                                  SizedBox(width: width*0.02,),
                                  const Text('GENERATE PDF',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 1),),
                               ],
                             ),
                        ),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: height*0.015,)
        ],
      ),
    );
  }
}



