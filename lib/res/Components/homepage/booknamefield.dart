import 'package:cashbook/res/Components/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class booknamefield extends StatefulWidget {
  @override
  _booknamefieldState createState() => _booknamefieldState();
}

class _booknamefieldState extends State<booknamefield> {

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

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
    return Padding(
      padding: const EdgeInsets.only(left: 12,right: 12),
      child: TextField(
        cursorColor: colorss().bluecolor3,
        cursorWidth: 2.3,
        cursorHeight: height*0.03/1.3,
        style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
        focusNode: emailFocusNod,
        decoration: InputDecoration(
          labelText: "Enter Book Name",
          labelStyle: TextStyle(
            fontSize: 14.5,
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
      ),
    );
  }
}