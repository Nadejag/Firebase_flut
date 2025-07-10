import 'package:cashbook/model/options.dart';
import 'package:flutter/material.dart';

class SortBottomSheet extends StatefulWidget {
  @override
  _SortBottomSheetState createState() => _SortBottomSheetState();
}

class _SortBottomSheetState extends State<SortBottomSheet> {
  String selectedOption = 'Name (A to Z)';



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// Header Row
          Row(
            children: [
              Icon(Icons.close, size: 22),
              SizedBox(width: 12),
              Text(
                "Sort Books By",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Divider(),

          /// Options List
          ...options.map((option) {
    final isSelected = selectedOption == option;

    return Container(

                  decoration: BoxDecoration(
                color: isSelected ? Color(0xFFE8EDFF) : Colors.transparent, // 🔵 Light blue background
                 borderRadius: BorderRadius.circular(8),
                 ),
                child: ListTile(
                 contentPadding: EdgeInsets.symmetric(horizontal: 8),
                  title: Text(
                  option,
                  style: TextStyle(
                   fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                    color: Colors.black,
                     ),
                ),
                  leading: Radio<String>(
               value: option,
               groupValue: selectedOption,
              activeColor: Colors.indigo.shade700,
                onChanged: (value) {
               setState(() {
            selectedOption = value!;
                });
                 },
             ),
              onTap: () {
               setState(() {
                 selectedOption = option;
              });
               },
               ),
               );
              }).toList(),


          SizedBox(height: 16),

          /// Apply Button
          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4D60E1), // Custom blue
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {
                // Apply selectedOption logic here
                Navigator.pop(context, selectedOption);
              },
              child: Text(
                'APPLY',
                style: TextStyle(
                  letterSpacing: 0.6,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
