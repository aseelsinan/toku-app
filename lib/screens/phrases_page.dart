import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/components/phrases.dart';
import 'package:toku_app/models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  final List<ItemModel> phrases = const [
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
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322b),
      ),
      body:ListView.builder(itemCount: phrases.length,
        itemBuilder: (BuildContext context, int index) =>  Phrases(itemModel:phrases[index] , color: Color.fromARGB(255, 114, 172, 226),),)
    );
  }
}