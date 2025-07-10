import 'package:flutter/material.dart';

class Bottomsheetforflutter extends StatefulWidget {
  const Bottomsheetforflutter({super.key});

  @override
  State<Bottomsheetforflutter> createState() => _BottomsheetforflutterState();
}

class _BottomsheetforflutterState extends State<Bottomsheetforflutter> {
  void showmybottomsheet(){
    showModalBottomSheet(context: context, builder: (context){
           return Container(
             color: Colors.black,

           );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Bottomsheetforflutter();


  }
}
