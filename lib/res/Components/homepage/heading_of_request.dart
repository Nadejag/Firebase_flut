import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class heading extends StatelessWidget {
  const heading({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height*0.09/1.1,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.indigo.shade800,
              Colors.indigo.shade800,
              Colors.blueAccent,
            ],

          ),
          borderRadius: BorderRadius.circular(5)
      ),

      child:
      Column(
        children: [
          ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("How to add team members?",style: TextStyle(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.bold,fontSize: 12.5),),
                  //SizedBox(height: height*0.01/2.9,),
                  Text("Add members & assign roles",style: TextStyle(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.bold,fontSize: 9),),
                  SizedBox(height: height*0.01/1.2,),
                  Container(
                    width: width*0.3/1.4,
                    height: height*0.02/1.1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Watch Video",style: TextStyle(fontSize: 8,color: Colors.deepPurple.shade900,fontWeight: FontWeight.bold),),
                        SizedBox(width: width*0.01,),
                        Icon(Icons.play_arrow,size: 15,)
                      ],
                    ),
                  )
                ],
              ),
              trailing: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 43,
                    color: Colors.white.withOpacity(0.5), // Circle color
                  ),
                  Icon(
                    Icons.circle,
                    size: 40,
                    color: Colors.indigo.shade900, // Circle color
                  ),
                  Icon(
                    Icons.person,
                    size: 24,  // Smaller than the circle
                    color: Colors.white,  // Person color
                  ),
                  Positioned(
                      bottom: 5,
                      right: 3,
                      child:Stack(children: [
                        Icon(
                          Icons.circle,
                          size: 13,
                          color: Colors.deepOrangeAccent, // Circle color
                        ),
                        Icon(
                          Icons.add,
                          size: 12.5,
                          color: Colors.white, // Circle color
                        ),
                      ],) )
                ],
              )

          )
        ],
      ) ,
    );
  }
}