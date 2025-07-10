import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/homepage/expense_sc_button.dart';
import 'package:cashbook/res/Components/widgets/addmorefield.dart';
import 'package:cashbook/res/Components/widgets/attachpdf_image.dart';
import 'package:cashbook/res/Components/widgets/datetimerow.dart';
import 'package:cashbook/res/Components/widgets/savebutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCashEntryScreen extends StatefulWidget {
  @override
  State<AddCashEntryScreen> createState() => _AddCashEntryScreenState();
}

class _AddCashEntryScreenState extends State<AddCashEntryScreen> {
  bool isSelected=true;
  String selectedType = "";
  final TextEditingController amountController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      backgroundColor: colorss().bgColor,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Add Cash In Entry",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.green.shade700),)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Container(
          color: colorss().whitecolor1,
          height: height*0.9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height*0.01,),
              datetimerow(),
              SizedBox(height: height*0.03),
              AddCashButton(label: 'Amount *',controller: amountController,color: Colors.green.shade800,keyboardType: TextInputType.number,),
              SizedBox(height: height*0.02/1,),
              AddCashButton(label: 'Contact (Customer/Supplier)',icon: Icons.arrow_drop_down_outlined,),
              SizedBox(height: height*0.02/1,),
              AddCashButton(label: 'Remark',icon:Icons.mic ,iconcolor:colorss().bluecolor3,),
               SizedBox(height: height*0.02,),
                 attachpdf(width: width, height: height),

              SizedBox(height: height*0.02,),
              AddCashButton(label: 'Category',icon: Icons.arrow_drop_down_outlined,),
              SizedBox(height: 16),
              Text("Payment Mode", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade700,fontSize: 13)),
              SizedBox(height: height*0.01,),
            Row(
              children: [
                ChoiceChip(
                  showCheckmark: false,
                  label: Text(
                    "Cash",
                    style: TextStyle(
                      fontSize: 11,
                      color: selectedType == "Cash" ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  selected: selectedType == "Cash",
                  selectedColor: colorss().bluecolor3,
                  backgroundColor: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  onSelected: (bool selected) {
                    setState(() {
                      selectedType = selected ? "Cash" : "";
                    });
                  },
                ),
                SizedBox(width: 8),
                ChoiceChip(
                  showCheckmark: false,
                  label: Text(
                    "Online",
                    style: TextStyle(
                      fontSize: 11,
                      color: selectedType == "Online" ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  selected: selectedType == "Online",
                  selectedColor: colorss().bluecolor3,
                  backgroundColor: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  onSelected: (bool selected) {
                    setState(() {
                      selectedType = selected ? "Online" : "";
                    });
                  },
                ),
                SizedBox(width: 8),
                TextButton(
                  onPressed: () {
                    // Show more logic
                  },
                  child: Row(
                    children: [
                      Text(
                        "Show More",
                        style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: colorss().bluecolor3),
                      ),
                      Icon(Icons.arrow_drop_down_outlined,color: colorss().bluecolor3,),
                    ],
                  ),
                )
              ],
            ),

              SizedBox(height: height*0.02),
              addmorefield(width: width, height: height),
              Spacer(),

              savebutton(width: width, height: height)
            ],
          ),
        ),
      ),
    );
  }
}
