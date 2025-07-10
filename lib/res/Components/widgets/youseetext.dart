
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class youseetext extends StatelessWidget {
  const youseetext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          //  border: Border.all(color: Colors.green)
        ),
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.lock, color: Colors.green.shade700, size: 20),
            SizedBox(width: 8),
            Text(
              "Only you can see these entries",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}