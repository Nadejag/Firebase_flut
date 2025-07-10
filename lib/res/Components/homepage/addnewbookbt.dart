import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/homepage/add_new_book_bottom.dart';
import 'package:cashbook/res/Components/homepage/home_expenses_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addnewbookbt extends StatelessWidget {
  const addnewbookbt({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: AddNewBookSheet(),
            ),
          ),
        );
      },

      child: Container(
        width: 167,
        height: 43,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: colorss().bluecolor4
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add,color: Colors.white,),
            SizedBox(width: width*0.02,),
            Text("ADD NEW BOOK",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 0.6),)
          ],
        ),
      ),
    );
  }
}