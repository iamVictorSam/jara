import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorBox extends StatelessWidget {
  final List<Widget> itemList;
  const ColorBox({Key? key, required this.itemList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: itemList,
      ),
    );
  }
}
