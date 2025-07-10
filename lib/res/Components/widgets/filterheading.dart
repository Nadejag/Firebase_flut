import 'package:cashbook/res/Components/homepage/filters/category.dart';
import 'package:cashbook/res/Components/homepage/filters/contact.dart';
import 'package:cashbook/res/Components/homepage/filters/entry_type.dart';
import 'package:cashbook/res/Components/homepage/filters/members.dart' show Members;
import 'package:cashbook/res/Components/homepage/filters/payment_mode.dart';
import 'package:cashbook/res/Components/homepage/filters/selected_date.dart';
import 'package:cashbook/res/Components/homepage/filters/widget/tune.dart';
import 'package:flutter/material.dart';

class Filterheading extends StatelessWidget {
  Filterheading({super.key});

  final List<String> filternames = [
    "Select Date",
    "Entry Type",
    "Members",
    "Contact",
    "Category",
    "Payment Mode",
  ];

  final List<Widget?> filterclas = [
    const SelectedDate(),
    const EntryType(),
    const Members(),
    const Contact(),
    const Category(),
    const PaymentMode(),
  ];

  void _showMyBottomSheet(BuildContext context, int index) {
    final selectedWidget = filterclas[index];
    if (selectedWidget == null) {
      // You can show a message or do nothing
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Filter not implemented yet")),
      );
      return;
    }

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(6)),
      ),
      builder: (context) {
        return Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.7,
          padding: const EdgeInsets.all(16),
          child: selectedWidget,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          tune(width: width, height: height),
          SizedBox(width: width*0.03,),
          Row(
            children: List.generate(filternames.length, (index) {
              final e = filternames[index];
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(
                  onTap: () {
                    _showMyBottomSheet(context, index);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade400, width: 0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Text(
                          e,
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            letterSpacing: 0.4,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Icon(Icons.arrow_drop_down_outlined, size: 20),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
