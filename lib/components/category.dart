import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String? text;
  final Color? color;
  final VoidCallback? onTap;
  const Category({super.key, this.text, this.color, this.onTap });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 16),
        height: 65,
        color: color,
        alignment: Alignment.centerLeft,

        width: double.infinity,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
