import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class filtersearchbar extends StatelessWidget {
  const filtersearchbar({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              width: 1,
              color: Colors.black.withOpacity(0.3)
          )
      ),
      width: double.infinity,
      height: height*0.049,
      child: Center(child: Align(
          alignment: Alignment.topCenter,
          child: AppSearchBar(font: 15, size: 20, color: colorss().black1.withOpacity(0.5), iconcolor:Colors.black.withOpacity(0.8),hint:"Search Contact"))),
    );
  }
}
