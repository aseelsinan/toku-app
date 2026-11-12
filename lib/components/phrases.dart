import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';
import 'package:toku_app/models/item_model.dart';

class Phrases extends StatelessWidget {
  final ItemModel itemModel;
  final Color color;

  const Phrases({super.key, required this.itemModel, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(itemModel: itemModel),
    );
  }
}