import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/homepage/booksetting.dart';
import 'package:cashbook/res/Components/homepage/records/viewreports.dart';
import 'package:cashbook/res/Components/widgets/cash_button_addyour.dart';
import 'package:cashbook/res/Components/widgets/entriesshowing.dart';
import 'package:cashbook/res/Components/widgets/filterheading.dart';
import 'package:cashbook/res/Components/widgets/search_bar.dart';
import 'package:cashbook/res/Components/widgets/youseetext.dart';
import 'package:cashbook/res/document/pdf_save.dart';
import 'package:flutter/material.dart';

class HomeExpenseScreen extends StatelessWidget {
  HomeExpenseScreen({
    super.key,
    required this.title,
  });

  final List<String> types = [
    "Book Settings",
    "Book Activity",
    "Delete All Entries",
    "Excel Report"
  ];

  final List<IconData> icons = [
    Icons.book_outlined,
    Icons.history,
    Icons.delete_outline,
    Icons.report,
  ];

  final String title;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: colorss().bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.5,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            Text(
              "Add Member, Book Activity etc",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person_add_alt, color: colorss().bluecolor3),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Booksetting()));
            },
          ),
          IconButton(
            icon: Icon(Icons.picture_as_pdf_outlined,
                color: colorss().bluecolor3),
            onPressed: () async {
              await savePDFToStorage();
            },
          ),
          PopupMenuButton<int>(
            color: Colors.white,
            icon: Icon(Icons.more_vert, color: colorss().bluecolor3),
            itemBuilder: (BuildContext context) {
              return List.generate(types.length, (index) {
                return PopupMenuItem<int>(
                  value: index,
                  child: ListTile(
                    leading: Icon(icons[index], size: 20),
                    title: Text(types[index], style: TextStyle(fontSize: 13)),
                  ),
                );
              });
            },
            onSelected: (value) {
              // Handle menu selection
              if (value == 0) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Booksetting()));
              }
              else if(value==3){
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Viewreports()));

                              }
              // Add other logic as needed
            },
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: height * 0.007),
          InkWell(
            onTap: (){
           //   Navigator.push(context,MaterialPageRoute(builder: (context)=>));
            },
            child: Container(
              color: Colors.white,
              width: double.infinity,
              height: height * 0.05,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: width*0.04,),
                  Icon(Icons.search,size: 22,color: colorss().bluecolor3,),
                  SizedBox(width: width*0.03,),
                  Center(
                    child:Text("Search by remark or amount",style: TextStyle(fontSize: 15.8, color: colorss().black1.withOpacity(0.5),),),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Filterheading(),
          ),
          Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: Colors.white,
            margin: EdgeInsets.all(16),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  rowItem("Net Balance", "0"),
                  Divider(color: Colors.grey.withOpacity(0.2)),
                  rowItem("Total In (+)", "0", color: Colors.green),
                  rowItem("Total Out (-)", "0", color: Colors.red),
                  Divider(color: Colors.grey.withOpacity(0.2)),
                  SizedBox(height: 8),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Viewreports()));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "VIEW REPORTS",
                          style: TextStyle(color: colorss().bluecolor3),
                        ),
                        SizedBox(width: 12),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 15,
                          color: colorss().bluecolor3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Divider(color: Colors.grey.shade300, thickness: 1)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Text(
                  "Showing 2 entries",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
              Expanded(
                  child: Divider(color: Colors.grey.shade300, thickness: 1)),
            ],
          ),
          SizedBox(height: height * 0.01),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "30 June 2025",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.6)),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.01),
          entries(width: width, height: height),
          youseetext(),
          Spacer(),
          cashbutton_addtext(height: height, width: width),
          SizedBox(height: 25),
        ],
      ),
    );
  }

  Widget rowItem(String title, String value, {Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value, style: TextStyle(color: color ?? Colors.black)),
        ],
      ),
    );
  }
}
