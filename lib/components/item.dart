import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
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
            color: Color(0xffFFF6DC),
            child: Image.asset(itemModel.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                  itemModel.japName,
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
                Text(
                  itemModel.engName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(itemModel.soundDir));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white, size: 34),
          ),
        ],
      ),
    );
  }
}
