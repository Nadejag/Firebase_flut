import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/document/pdf.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class attachpdf extends StatelessWidget {
  const attachpdf({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
    //  onTap: () => generatePDFReport(context),
      child: Container(
        width: width*0.5,
        height: height*0.04,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: Colors.grey.withOpacity(0.4)
            )
        ),
        child: Center(child: TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.attachment_outlined,color: colorss().bluecolor3,),
          label: Text("Attach Image or PDF",style: TextStyle(fontSize: 13,color: colorss().bluecolor3),),
        ), ),
      ),
    );
  }
}