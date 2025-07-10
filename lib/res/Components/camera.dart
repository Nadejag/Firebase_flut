import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class camera extends StatelessWidget {
  const camera({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,top: 4,),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(Icons.add_a_photo_outlined, size: 40, color: Colors.grey),
      ),
    );
  }
}
