
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key, required this.font, required this.size, required this.color, required this.iconcolor, required this.hint,
  });
  final double font;
  final double size;
  final Color color;
  final Color iconcolor;
  final String hint;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Padding(
      padding: const EdgeInsets.only(top: 5),
          child:Card(
            elevation: 1,
            shape: RoundedRectangleBorder(),
            color: Colors.white,
            child: TextField(
              cursorHeight: 22,
              cursorColor: Colors.green.shade800,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                hintStyle: TextStyle(fontSize: font,color: color),
                prefixIcon: Icon(Icons.search,size:size,color: iconcolor,),
                // border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)
                 //),
              ),
            )
      ),
    );
  }
}

class AppSearchBar2 extends StatelessWidget {
  const AppSearchBar2({
    super.key, required this.font, required this.size, required this.color, required this.iconcolor, required this.hint,
  });
  final double font;
  final double size;
  final Color color;
  final Color iconcolor;
  final String hint;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return
      Padding(
      padding: const EdgeInsets.only(top: 25),
      child:Card(
          elevation: 1,
          shape: RoundedRectangleBorder(),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: width*0.02,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black.withOpacity(0.7),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),

              //  SizedBox(width: width * 0.04),
              Expanded(
                child: TextField(
                  cursorHeight: 22,
                  cursorColor: Colors.green.shade800,
                  decoration: InputDecoration(
                    hintText: hint,
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: font,color: color),
                    prefixIcon: Icon(Icons.search,size:size,color: iconcolor,),
                    // border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)
                    //),
                  ),
                ),
              ),

            ],
          )
      ),
    );
  }
}