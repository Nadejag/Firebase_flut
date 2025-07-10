import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaqTile extends StatelessWidget {
  final String question;
   FaqTile({required this.question});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12,right: 12,top: 10),
          child: Row(
            children: [
              Text(question,style: TextStyle(fontSize: 13),),
              Spacer(),
              Icon(Icons.arrow_forward_ios_sharp,size: 13,)
            ],
          ),

        ),
        SizedBox(height: 5,),
        Divider(color: Colors.black12.withOpacity(0.1),)
      ],
    );
  }
}
