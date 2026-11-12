import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/components/phrases.dart';
import 'package:toku_app/models/item_model.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});
  final List<ItemModel> colors = const [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      japName: 'Burakku',
      engName: 'Black',
      soundDir: 'sounds/colors/black.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_brown.png',
      japName: 'Chairo',
      engName: 'Brown',
      soundDir: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      japName: 'Horoki ppoi kiiro',
      engName: 'Dusty Yellow',
      soundDir: 'sounds/colors/dusty yellow.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      japName: 'Gure',
      engName: 'Gray',
      soundDir: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_green.png',
      japName: 'Midori',
      engName: 'Green',
      soundDir: 'sounds/colors/green.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      japName: 'Aka',
      engName: 'Red',
      soundDir: 'sounds/colors/red.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_white.png',
      japName: 'Shiroi',
      engName: 'White',
      soundDir: 'sounds/colors/white.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers', style: TextStyle(color: Colors.white)),

        backgroundColor: Color(0xff46322b),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) {
          return Phrases(itemModel: colors[index], color: Color(0xff79359f));
        },
      ),
    );
  }
}
