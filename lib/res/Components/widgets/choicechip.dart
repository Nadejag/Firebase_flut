
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class choiceChip extends StatelessWidget {
  const choiceChip({
    super.key,
    required this.label,
    required this.selected,
  });

  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      onSelected: (_) {},
    );
  }
}