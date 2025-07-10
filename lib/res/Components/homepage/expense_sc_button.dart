import 'package:cashbook/res/Components/color.dart';
import 'package:flutter/material.dart';

class AddCashButton extends StatefulWidget {
  final String label;
  final String? hint;
  final IconData? icon;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final Color? color;
  final Color? iconcolor;
  const AddCashButton({
    super.key,
    required this.label,
    this.hint,
    this.icon,
    this.controller,
    this.keyboardType = TextInputType.text, this.color, this.iconcolor,
  });

  @override
  State<AddCashButton> createState() => _AddCashButtonState();
}

class _AddCashButtonState extends State<AddCashButton> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return TextField(

      controller: widget.controller,
      focusNode: _focusNode,
      keyboardType: widget.keyboardType,
      cursorColor: colorss().bluecolor3,
      cursorWidth: 2.1,
      cursorHeight: height * 0.02,
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,color: widget.color),
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hint,
        labelStyle: TextStyle(
          fontSize: 14.5,
          fontWeight: FontWeight.w600,
          color: _focusNode.hasFocus
              ? colorss().bluecolor3
              : Colors.grey[500],
        ),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 11, horizontal: 12),
        suffixIcon: widget.icon != null ? Icon(widget.icon,color: widget.iconcolor,size: 22,) : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorss().bluecolor3, width: 2.1),
        ),
      ),
    );
  }
}
