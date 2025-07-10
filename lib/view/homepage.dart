import 'package:cashbook/model/business_model.dart';
import 'package:cashbook/res/Components/button1.dart';
import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/filterbotm.dart';
import 'package:cashbook/res/Components/homepage/Business_Team.dart';
import 'package:cashbook/res/Components/homepage/add_new_book_bottom.dart';
import 'package:cashbook/res/Components/homepage/addnewbookbt.dart';
import 'package:cashbook/res/Components/homepage/booksList.dart';
import 'package:cashbook/res/Components/homepage/searchbybookname.dart';
import 'package:cashbook/res/Components/logos&buttons/Businesslog.dart';
import 'package:cashbook/res/Components/logos&buttons/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 1;
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            onTap: (){
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(6)),
                ),
                builder: (context) {
                  return Container(
                    padding: const EdgeInsets.only(left: 0,right: 0,top: 16),
                    width: double.infinity,
                    height: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            SizedBox(width: 11,),
                            Icon(Icons.close,size: 22,),
                            SizedBox(width: 13,),
                            Text("Select Business",style: TextStyle(fontWeight: FontWeight.w700,letterSpacing: 0.4),),
                          ],
                        ),
                        const Divider(),
                        SizedBox(
                          height: 60,
                          child: ListView.separated(
                           itemCount: businesses.length,
                              separatorBuilder: (context, index) =>
                           Divider(height: 1, color: Colors.grey.shade300),
                                  itemBuilder: (context, index) {
                           final item = businesses[index];
                           final isSelected = selectedIndex == index;

                            return ListTile(
                            leading: item['image'] is String
                            ? CircleAvatar(
                            backgroundImage: NetworkImage(item['image']),
                             )
                             : Icon(item['image'], size: 32, color: Colors.blue),
                             title: Text(
                              item['name'],
                              style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              subtitle: Text(
                              'Your Role: ${item['role']} . ${item['books']} Book${item['books'] > 1 ? 's' : ''}',
                               style: TextStyle(color: Colors.grey[600]),
                                ),
                                trailing: isSelected
                                 ? Icon(Icons.check_circle, color: Colors.green)
                                 : null,
                                 onTap: () {
                                 setState(() {
                                 selectedIndex = index;
                                 });
                                  },
                                 );
                                },
                               ),
                        ),
                        SizedBox(height: height*0.02,),
                        Padding(
                          padding: const EdgeInsets.only(left: 14,right: 10),),
                        SizedBox(height: height*0.02,),
                        SizedBox(height: height*0.01/1.1,),
                        const Divider(),
                        Center(child: Button2(width: width, height: height, value: 'ADD NEW BUSINESS', bgcolor: colorss().bluecolor1, icon: Icons.add,))
                      ],
                    ),
                  );
                },
              );
            },
            child: Row(
              children: [
                businesslogo(width: width, height: height,color: Colors.black45.withOpacity(0.5),),
                appbar_cashboksc(width: width, heading: 'Computer', desc: 'Tap to switch business', icons: Icon(Icons.keyboard_arrow_down),),
              ],
            ),
          ),


          Spacer(),
          InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BusinessTeam()));
              },
              child: Icon(Icons.person_add_outlined)),
          SizedBox(width: width*0.04,)
        ],
      ),
      body: SafeArea(
    child: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        // your SingleChildScrollView for horizontal row
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 0),
                child: Container(
                  width: width * 0.9,
                  child: Image.asset("assets/images/cashbk1.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 0),
                child: Container(
                  width: width * 0.9,
                  child: Image.asset("assets/images/cashbk2.png"),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: height * 0.03),
        // the rest of your rows and ListTile
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Your Books", style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.6, color: Colors.black45.withOpacity(0.5))),
            ),
            Spacer(),
            InkWell(
                onTap: (){ showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(6)),
                  ),
                  builder: (context) {
                    return Container(
                      color: Colors.white,
                      height: height*0.5,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SortBottomSheet(),
                        ],
                      ),
                    );
                  },
                );
                },
                child: Icon(Icons.sort, size: 24, color: Colors.indigo)),
            SizedBox(width: width * 0.04),
            InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Searchbybookname()));
                },
                child: Icon(Icons.search, color: Colors.indigo)),
            SizedBox(width: width * 0.05),
          ],
        ),
        SizedBox(height: height * 0.02),

        BooksList(width: width, height: height),

        Padding(
          padding: const EdgeInsets.only(left: 55,right: 35),
          child: Divider(color: Colors.black.withOpacity(0.1),),
        )
      ],
    ),
    ),
    ),
    floatingActionButton: InkWell(
        onTap: (){
          showModalBottomSheet(context: context,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(7))),
              builder: (context){
            return Container(
              width: double.infinity,
              height: height*0.4/1.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddNewBookSheet()
                ],
              ),
            );
          });
        },
        child: addnewbookbt(width: width)));
  }
}
