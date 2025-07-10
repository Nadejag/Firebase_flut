
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class datetimerow extends StatelessWidget {
  const datetimerow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Row(
          children: [
            Icon(Icons.calendar_today,size: 17,),
            SizedBox(width: 8),
            Text("30/06/2025"),
            SizedBox(width: 8),
            Icon(Icons.arrow_drop_down_outlined,color: Colors.grey.shade600,),

          ],
        ),
        Spacer(),

        Row(
          children: [
            Icon(Icons.access_time,size: 18,),
            SizedBox(width: 4),
            Text("11:17 am"),
            SizedBox(width: 8),
            Icon(Icons.arrow_drop_down_outlined,color: Colors.grey.shade600,),
          ],
        ),
      ],
    );
  }
}
