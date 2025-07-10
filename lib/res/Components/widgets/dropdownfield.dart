import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownField extends StatelessWidget {
  const DropDownField({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      items: [value].map((v) => DropdownMenuItem(value: v, child: Text(v))).toList(),
      onChanged: (v) {},
      decoration: InputDecoration(labelText: label),
    );
  }
}