import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/homepage/booknamefield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewBookSheet extends StatefulWidget {
  const AddNewBookSheet({super.key});

  @override
  State<AddNewBookSheet> createState() => _AddNewBookSheetState();
}

class _AddNewBookSheetState extends State<AddNewBookSheet> {
  final FocusNode emailFocusNod = FocusNode();

@override
void initState() {
  super.initState();
  emailFocusNod.addListener(() {
    setState(() {});
  });
}

@override
void dispose() {

  emailFocusNod.dispose();
  super.dispose();
}
final List<String> Suggestions = [
  "June Expenses",
  "Home Expense",
  "Client Record",
  "Project Book",
];
  final TextEditingController _controller = TextEditingController();
  String bookname = "";
  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height * 1;


    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: 11, height: height * 0.06),
            Icon(Icons.close, size: 25),
            SizedBox(width: 13),
            Text(
              "Add New Book",
              style: TextStyle(
                fontSize: 17.5,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.4,
              ),
            ),
          ],
        ),
        Divider(color: Colors.grey.withOpacity(0.2)),
        SizedBox(height: height * 0.02),
       // booknamefield(),
        //SizedBox(height: height * 0.01),
        Padding(
          padding: const EdgeInsets.only(left: 13,right: 13),
          child: TextField(
            cursorColor: colorss().bluecolor3,
            cursorWidth: 2.3,
            cursorHeight: height*0.03/1.3,
            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
            focusNode: emailFocusNod,
            decoration: InputDecoration(
              labelText: "Enter Book Name",
              labelStyle: TextStyle(
                fontSize: 13.3,
                fontWeight: FontWeight.bold,
                color: emailFocusNod.hasFocus
                    ? colorss().bluecolor3      // When focused
                    : Colors.grey[500], // When not focused
              ),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 14),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey,width: 1.2),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colorss().bluecolor3,width: 2.1),
              ),
            ),
            controller: _controller,
            onChanged: (value){
              setState(() {
                bookname=value;
              });

            },
          ),
        ),
        SizedBox(height: height * 0.01),
        Row(
          children: [
            SizedBox(width: width*0.04,),
            Text(
              "Suggestions",
              style: TextStyle(
                color: Colors.grey.shade600,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 13),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: Suggestions.map((s) {

              return InkWell(
                onTap: () {
                  setState(() {
                    _controller.text = s;
                    bookname = s;
                  });
                },

                borderRadius: BorderRadius.circular(25),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent.withOpacity(0.1),
                    border: Border.all(color: Colors.indigo.shade300, width: 0.5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    s,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                      letterSpacing: 0.4
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        SizedBox(height: height*0.01,),
        Divider(color: Colors.grey.withOpacity(0.4),),
        InkWell(
          onTap: bookname.trim().isEmpty
              ? null
              : () {
            Navigator.pop(context);
          },
          borderRadius: BorderRadius.circular(100),  // for rounded button
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,top: 6),
            child: Container(
              width: double.infinity,
              height: height * 0.05 / 1.1,
              decoration: BoxDecoration(
                color: bookname.trim().isEmpty
                    ? Colors.grey.shade300
                    : Colors.blue, // or your color
              borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: bookname.trim().isEmpty ? Colors.grey : Colors.white,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "ADD NEW BOOK",
                    style: TextStyle(
                      color: bookname.trim().isEmpty ? Colors.grey : Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.6,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )

      ],
    );
  }
}
