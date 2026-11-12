import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';
import 'package:toku_app/models/item_model.dart';

class Item extends StatelessWidget {
  final ItemModel itemModel;
  final Color color;

  const Item({super.key, required this.itemModel, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(itemModel.image),
          ),
          // تم استخدام Expanded هنا لمنع خطأ الـ Spacer الموجود داخل ItemInfo
          Expanded(
            child: ItemInfo(itemModel: itemModel),
          )
        ],
      ),
    );
  }
}