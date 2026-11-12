import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  final ItemModel itemModel;

  const ItemInfo({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemModel.japName,
                style: const TextStyle(color: Colors.white, fontSize: 23),
              ),
              Text(
                itemModel.engName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        const Spacer(flex: 1),
        IconButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource(itemModel.soundDir));
          },
          icon: const Icon(Icons.play_arrow, color: Colors.white, size: 34),
        ),
      ],
    );
  }
}