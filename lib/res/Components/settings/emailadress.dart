import 'package:cashbook/res/Components/button1.dart';
import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/homepage/expense_sc_button.dart';
import 'package:cashbook/res/Components/widgets/appbarcard.dart';
import 'package:flutter/material.dart';

class Emailadress extends StatefulWidget {
  const Emailadress({super.key});

  @override
  State<Emailadress> createState() => _EmailadressState();
}

class _EmailadressState extends State<Emailadress> {
 final TextEditingController emailnewcontroller=TextEditingController();
 final TextEditingController emailoldcontroller=TextEditingController();
 bool isfilled=false;
  @override
  void initState() {
    super.initState();
   emailnewcontroller.addListener(_checkfilleds);
   emailoldcontroller.addListener(_checkfilleds);
  }
  void _checkfilleds(){
    final filled = emailnewcontroller.text.isNotEmpty && emailoldcontroller.text.isNotEmpty;
   if(filled!=isfilled){
     setState(() {
       isfilled=filled;
     });
   }
  }
  @override
  void dispose() {
    emailnewcontroller.dispose();
    emailoldcontroller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarCard(width: width, title: 'Add Email Address',color:colorss().bluecolor3),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height*0.025,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("Enter your old email address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.8,color: Colors.black.withOpacity(0.6)),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12,right:12,top: 17),
            child: AddCashButton(label: 'Email Address',controller:emailnewcontroller,),
          ),
          SizedBox(height: height*0.03,),
          Padding(
            padding: const EdgeInsets.only(left: 14.5),
            child: Text("Enter your new email address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.8,color: Colors.black.withOpacity(0.6)),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12,right:12,top: 17),
            child: AddCashButton(label: 'Email Address',controller:emailoldcontroller,),
          ),
          Spacer(),

          isfilled ?  InkWell(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Emailadress()));
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child:  Align(
                  alignment: Alignment.center,
                  child: Button2(width: width, height: height, value: 'NEXT', bgcolor: colorss().bluecolor3.withOpacity(0.9))),
            )
          ) : Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child:  Align(
            alignment: Alignment.center,
            child:Container(
              width: width*0.9,
              height: height*0.05/1,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                 color: Colors.grey.withOpacity(0.3)
              ),
              child:Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(width: width*0.02,),
                  Text("NEXT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.32),fontFamily: 'Roboto',letterSpacing: 1.0,),),
                ],
              )),
            ),),
      ),

        ],
      ),
    );
  }
}
