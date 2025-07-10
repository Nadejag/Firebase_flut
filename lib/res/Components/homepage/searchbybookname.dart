import 'package:cashbook/res/Components/homepage/booksList.dart';
import 'package:cashbook/res/Components/homepage/filters/searchfiltersorpractice.dart';
import 'package:cashbook/res/Components/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchbybookname extends StatefulWidget {
  const Searchbybookname({super.key});

  @override
  State<Searchbybookname> createState() => _SearchbybooknameState();
}

class _SearchbybooknameState extends State<Searchbybookname> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
     backgroundColor: Colors.white,
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(100),
      //   child: AppSearchBar2(font:17, size: 11, color: Colors.black.withOpacity(0.6), iconcolor: Colors.white, hint: 'Search by book name',),
      // ),
      body:Column(
    children: [
     //BooksList(width: width, height: height),
      Expanded(child: MainPageState())
    ],
    ));
  }
}


