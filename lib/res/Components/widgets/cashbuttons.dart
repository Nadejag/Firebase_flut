import 'package:cashbook/res/Components/homepage/cashentryscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cashbuttons extends StatelessWidget {
  const cashbuttons({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 13),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AddCashEntryScreen(),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                      right: 13,
                      top: 8,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Record",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: width * 0.01),
                        Text(
                          "Income",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.green.shade900,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add, color: Colors.white),
                        SizedBox(width: 6),
                        Text(
                          "CASH IN",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          //SizedBox(width: 5,),
          SizedBox(width: 10),
          Expanded(
            child: InkWell(
              onTap: () {
                // Handle CASH OUT action
              },
              borderRadius: BorderRadius.circular(8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                      right: 13,
                      top: 8,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Record",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: width * 0.01),
                        Text(
                          "Expense",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.red.shade900,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.remove, color: Colors.white),
                        SizedBox(width: 6),
                        Text(
                          "CASH OUT",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}