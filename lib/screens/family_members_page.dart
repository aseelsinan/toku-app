import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<ItemModel> familymembers = const [
    ItemModel(
      image: 'assets/images/family_members/family_father.png',
      japName: 'Chichiioya',
      engName: 'Father',
      soundDir: 'sounds/family_members/father.wav',
    ),

    ItemModel(
      image: 'assets/images/family_members/family_daughter.png',
      japName: 'Musume',
      engName: 'Daughter',
      soundDir: 'sounds/family_members/daughter.wav',
    ),

    ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      japName: 'Ojisan',
      engName: 'Grand Father',
      soundDir: 'sounds/family_members/grand father.wav',
    ),

    ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      japName: 'Hanaoya',
      engName: 'Mother',
      soundDir: 'sounds/family_members/mother.wav',
    ),

    ItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      japName: 'sobo',
      engName: 'Grand Mother',
      soundDir: 'sounds/family_members/grand mother.wav',
    ),

    ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      japName: 'Nisan',
      engName: 'Older Brother',
      soundDir: 'sounds/family_members/older bother.wav',
    ),

    ItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      japName: 'Ane',
      engName: 'Older Sister',
      soundDir: 'sounds/family_members/older sister.wav',
    ),

    ItemModel(
      image: 'assets/images/family_members/family_son.png',
      japName: 'Mosoko',
      engName: 'Son',
      soundDir: 'sounds/family_members/son.wav',
    ),

    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Memebers',
        style: TextStyle(color:Colors.white),),
        backgroundColor: Color(0xff46322b),
      ),
      body: ListView.builder(
        
        itemCount: familymembers.length,
        itemBuilder: (BuildContext context, int num) {
          return Item(itemModel: familymembers[num], color: Color(0xff558837));
        },
      ),
    );
  }
}
