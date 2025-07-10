import 'package:cashbook/res/Components/homepage/home_expenses_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BooksList extends StatelessWidget {
  const BooksList({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeExpenseScreen(title: 'Business Book',)));
      },
      child:
      Padding(
        padding: const EdgeInsets.only(left: 2,right: 1),
        child:
        ListTile(
          title: Text("Business Book", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700, letterSpacing: 0.06, color: Colors.black.withOpacity(0.7))),
          leading:
          Container(
            width: width*0.09/1.1,
            height: height*0.04/1.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.indigo.withOpacity(0.3)
            ),
            child: Center(child: Icon(Icons.book,color: Colors.indigo,),),
          ),
          subtitle: Text("Updated 4 hours ago",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,letterSpacing: 0.06,color: Colors.black.withOpacity(0.3)),),
          trailing: Container(
            width: width*0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text("1,000",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w900,fontSize: 13.5),),
                SizedBox(width: width*0.01,),
                PopupMenuButton(itemBuilder: (BuildContext context)=>[
                  PopupMenuItem(
                      child:ListTile(
                        leading: Icon(Icons.edit),
                        title: Text('Rename'),
                      ) ),
                  PopupMenuItem(
                    child:ListTile(
                      leading: Icon(Icons.copy),
                      title: Text('Duplicate Book'),
                    ),
                  ),
                  PopupMenuItem(
                      child:ListTile(
                        leading: Icon(Icons.group_add),
                        title: Text('Add Members'),
                      ) ),
                  PopupMenuItem(
                      child:ListTile(
                        leading: Icon(Icons.redo, color: Colors.red),
                        title: Text('Move Book'),
                      ) ),
                  PopupMenuItem(
                      child:ListTile(
                        leading: Icon(Icons.delete, color: Colors.red),
                        title: Text('Delete Book'),
                      ) ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



