import 'package:cashbook/model/settinglist.dart';
import 'package:cashbook/res/Components/button1.dart';
import 'package:cashbook/res/Components/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Booksetting extends StatefulWidget {
  const Booksetting({super.key});

  @override
  State<Booksetting> createState() => _BooksettingState();
}

class _BooksettingState extends State<Booksetting> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      backgroundColor: colorss().bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Book Settings",style: TextStyle(fontSize: 16.8,fontWeight: FontWeight.bold,letterSpacing: 0.2,color: Colors.black.withOpacity(0.9)),),
      actions: [
        PopupMenuButton(
            color: Colors.white,
            itemBuilder: (BuildContext context)=>[
          PopupMenuItem(child:SizedBox(
              child: Text("Delete Book",style: TextStyle(fontSize: 13),))),
          PopupMenuItem(child:SizedBox(
              child: Text("Delete All Entries",style: TextStyle(fontSize: 13),))),
        ])
      ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                SizedBox(height:height*0.007 ,),
          Container(
            width: double.infinity,
            height: height*0.08,
            color: Colors.white,
            child: ListTile(
              title: Text("Cashbook Name",style: TextStyle(fontSize: 11,color: colorss().black1.withOpacity(0.5),fontWeight: FontWeight.w400,letterSpacing: 0.5),),
              subtitle: Text("Client Record",style: TextStyle(color: Colors.black.withOpacity(0.86),fontWeight: FontWeight.bold,letterSpacing: 0.8),),
              trailing:Container(
                  width: width*0.24,
                  height: height*0.03,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.2,
                      color: colorss().bluecolor3
                    )
                  ),
                  child: Center(child: Text("RENAME",style: TextStyle(color: colorss().bluecolor3,fontWeight: FontWeight.bold,letterSpacing: 0.8),))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13,top: 13,bottom: 11),
            child: Text("General Book Settings",style: TextStyle(fontSize: 11.6,color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold,letterSpacing: 0.8),),
          ),
          Container(
            color: Colors.white,
            child:Column(
              children: [
                settingslists(title: 'Entry Field Settings', subtitle: 'Category, Payment Mode,Contact,Custom fields', color: colorss().bluecolor3, leadicon: Icons.settings_outlined, colorbg: colorss().bluecolor3,),
                settingslists(title: 'Book Activity', subtitle: 'Stay updated on all the book activities', color: colorss().bluecolor3, leadicon: Icons.history, colorbg: colorss().bluecolor3,)
              ]
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(left: 13,top: 13,bottom: 11,right: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Members",style: TextStyle(fontSize: 11.6,color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.bold,letterSpacing: 0.8),),
                Text("View Roles",style: TextStyle(fontSize: 11.6,color: colorss().bluecolor3,fontWeight: FontWeight.w500,letterSpacing: 0.8),),
              ],
            ),
          ),
          Container(
            height: height*0.11,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text("You",style: TextStyle(fontWeight: FontWeight.bold),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal.shade700,
                    child: Text("Q",style: TextStyle(color: Colors.white,fontSize: 21),),
                  ),
                  subtitle:  Text("mohammmedqabool64@gmail.com",style: TextStyle(fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 72),
                  child: Text("View Your Role & Permissions",style: TextStyle(fontSize: 12.5,fontWeight: FontWeight.w600,color: colorss().bluecolor3),),
                ),

              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
                alignment: Alignment.center,
                child: Button2(width: width, height: height, value: 'ADD MEMBERS', bgcolor: colorss().bluecolor3.withOpacity(0.9), icon: Icons.person_add_outlined,)),
          )
        ],
      ),
    );
  }
}
