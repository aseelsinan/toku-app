import 'package:flutter/material.dart';
import 'package:toku_app/components/category.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text(
          'Toku',
          style: TextStyle(
            color: Color(0xffffffff),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: Color(0xffef9235),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => NumbersPage(),
              ),
            ),
          ),
          Category(
            text: 'Family Memebers',
            color: Color(0xff558837),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => FamilyMembersPage(),
              ),
            ),
          ),
          Category(text: 'Colors', color: Color(0xff79359f)),
          Category(text: 'Phrases', color: Color.fromARGB(255, 114, 172, 226)),
        ],
      ),
    );
  }
}
