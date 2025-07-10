import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/homepage/expense_sc_button.dart';
import 'package:cashbook/res/Components/settings/changeemail.dart';
import 'package:cashbook/res/Components/widgets/appbarcard.dart';
import 'package:flutter/material.dart';

class Yourprofile extends StatelessWidget {
  const Yourprofile({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    TextEditingController textcontroller=TextEditingController();
   textcontroller.text="qabool Mohammed";
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarCard(width: width, title: 'Your Profile',color:colorss().bluecolor3),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12,right:12,top: 22),
            child: AddCashButton(label: 'Your Full Name',controller:textcontroller,),
          ),
          ListTile(
            title:Text("Email Address",style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.5)),),
            subtitle:Text("mohammedqabool64@gmail.com",style: TextStyle(fontSize: 13.5,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.9)),),

            trailing:InkWell(
                onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Changeemail()));
                },
                child: Text("CHANGE",style: TextStyle(fontSize: 13.7,fontWeight: FontWeight.bold,color: colorss().bluecolor3),)) ,
          ),

          // Padding(
          //   padding: const EdgeInsets.only(left: 40),
          //   child: Align(
          //     alignment: Alignment.topLeft,
          //     child: ClipPath(
          //       clipper: TriangleClipper(),
          //       child: Container(
          //         color: Colors.teal,
          //         height: 15,
          //         width: 17,
          //       ),
          //     ),
          //   ),
          // ),
             Container(
               width: width*0.96,
               height: height*0.092,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(4),
                   color: Colors.teal.withOpacity(0.17)
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Stack(
                     children: [
                       ListTile(
                         leading: Icon(Icons.verified,color: Colors.teal.shade700,size: 21,),
                         title: Text("Verified Email ID",style: TextStyle(fontSize: 12.4,fontWeight: FontWeight.bold,color: Colors.teal.shade800),),
                       ),
                       Positioned(
                         child: Padding(
                           padding: const EdgeInsets.only(left: 55,top: 44),
                           child: Text("Use this Email ID to login on mobile app &\n web cashbook.in on your laptop/desktop ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,letterSpacing: 0.2,
                               color: Colors.teal.withOpacity(0.9)
                           ),),
                         ),
                       ),
                         ]

                   ),

                 ],
               ),
             ),
        ],
      ),
    );
  }
}
class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, size.height / 2); // Top right corner
    path.lineTo(0 , size.height); // Bottom left corner
    path.close(); // Close the triangle
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}