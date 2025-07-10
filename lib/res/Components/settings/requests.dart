import 'package:flutter/material.dart';

class RequestScreen extends StatefulWidget {
  @override
  _RequestScreenState createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.black),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        title: Text("Requests", style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 15,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 1,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black54,
          tabs: [
            Tab(text: "Received"),
            Tab(text: "Sent"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildEmptyState(
            title: "No received requests found!",
            subtitle:
            "If your staff members send a request to move a book from their business to this business then those will appear here",
          ),
          _buildEmptyState(
            title: "No sent requests found!",
            subtitle:
            "When you send a request to move a book to another business, it will appear here",
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState({required String title, required String subtitle}) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[500], fontSize: 13,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}






// import 'dart:ffi';
//
// import 'package:cashbook/res/Components/color.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Requests extends StatefulWidget {
//   const Requests({super.key});
//
//   @override
//   State<Requests> createState() => _RequestsState();
// }
//
// class _RequestsState extends State<Requests> {
//   @override
//   Widget build(BuildContext context) {
//     final height=MediaQuery.sizeOf(context).height * 1;
//     final width=MediaQuery.sizeOf(context).width * 1;
//     bool _isselected=false;
//     setState(() {
//       _isselected=true;
//     });
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: Text("Requests",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.7)),),
//         ),
//         backgroundColor: Colors.grey.shade100,
//         body: Column(
//           children: [
//             SizedBox(height: height*0.01,),
//             Container(
//               color: Colors.white,
//               height: height*0.05,
//               width: double.infinity,
//                child: Row(
//                  children: [
//                        SizedBox(width: width*0.06,),
//                        Text("Received",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade500),),
//                        SizedBox(width: width*0.03,),
//                        Text("Sent",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade500),)
//                  ],
//                ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
