import 'package:cashbook/res/Components/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class mobilenumfield extends StatefulWidget {
  @override
  _mobilenumfieldState createState() => _mobilenumfieldState();
}

class _mobilenumfieldState extends State<mobilenumfield> {

  final FocusNode emailFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    emailFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {

    emailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
    return TextField(
      keyboardType:TextInputType.number,
      cursorColor: colorss().bluecolor3,
      cursorWidth: 2,
      cursorHeight: height*0.02,
      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
      focusNode: emailFocusNode,
      decoration: InputDecoration(
        labelText: "Mobile Number",
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: emailFocusNode.hasFocus
              ? colorss().bluecolor3      // When focused
              : Colors.grey[500], // When not focused
        ),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 11,horizontal: 12),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey,width: 1.2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorss().bluecolor3,width: 2.1),
        ),
      ),
    );
  }
}




class EmailField extends StatefulWidget {
  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {

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
    return TextField(
      keyboardType:TextInputType.number,
      cursorColor: colorss().bluecolor3,
      cursorWidth: 2,
      cursorHeight: height*0.02,
      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
      focusNode: emailFocusNod,
      decoration: InputDecoration(
        labelText: "Email Address",
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: emailFocusNod.hasFocus
              ? colorss().bluecolor3      // When focused
              : Colors.grey[500], // When not focused
        ),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 11,horizontal: 12),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey,width: 1.2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorss().bluecolor3,width: 2.1),
        ),
      ),
    );
  }
}














// child: TextField(
//   cursorColor: colorss().bluecolor3,
//   cursorWidth: 3,
//   decoration: InputDecoration(
//     labelText: " Mobile Number ",
//     labelStyle: TextStyle(
//         color: colorss().bluecolor3,
//         fontSize: 14,
//         fontWeight: FontWeight.w600
//     ),
//     isDense: true, // ✅ Reduces internal padding
//     contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
//     enabledBorder: OutlineInputBorder(
//
//       borderSide: BorderSide(
//         color: Colors.grey.withOpacity(0.3),
//         width: 2.0,
//       ),
//       borderRadius: BorderRadius.circular(5),
//     ),
//     focusedBorder: OutlineInputBorder(
//       borderSide: BorderSide(
//         color: colorss().bluecolor3,
//         width: 2.0,
//       ),
//       borderRadius: BorderRadius.circular(5),
//     ),
//
//   ),
// ),








// Container(
// width: width*0.9,
// height: height*0.05/1,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(8)
// ),
// child: TextField(
// cursorColor: colorss().bluecolor3,
// cursorWidth: 3,
// decoration: InputDecoration(
//
// labelText: " Email Address ",
// labelStyle: TextStyle(
// color: colorss().bluecolor3,
// fontSize: 16,
// fontWeight: FontWeight.w600
// ),
// isDense: true, // ✅ Reduces internal padding
// contentPadding: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
// enabledBorder: OutlineInputBorder(
//
// borderSide: BorderSide(
// color: Colors.grey,
// width: 2.5,
// ),
// borderRadius: BorderRadius.circular(5),
// ),
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide(
// color: colorss().bluecolor3,
// width: 2.5,
// ),
// borderRadius: BorderRadius.circular(5),
// ),
//
// ),
// ),
// ),
