import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/models/numbers.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Number> numbers = const [
    Number(
      image: 'assets/images/numbers/number_one.png',
      japName: 'Ichi',
      engName: 'One',
    ),
    Number(
      image: 'assets/images/numbers/number_two.png',
      japName: 'Ni',
      engName: 'Two',
    ),
    Number(
      image: 'assets/images/numbers/number_three.png',
      japName: 'San',
      engName: 'Three',
    ),
    Number(
      image: 'assets/images/numbers/number_four.png',
      japName: 'Shi',
      engName: 'Four',
    ),
    Number(
      image: 'assets/images/numbers/number_five.png',
      japName: 'Go',
      engName: 'Five',
    ),
    Number(
      image: 'assets/images/numbers/number_six.png',
      japName: 'Roku',
      engName: 'Six',
    ),
    Number(
      image: 'assets/images/numbers/number_seven.png',
      japName: 'Sebun',
      engName: 'Seven',
    ),
    Number(
      image: 'assets/images/numbers/number_eight.png',
      japName: 'Hachi',
      engName: 'Eight',
    ),
    Number(
      image: 'assets/images/numbers/number_nine.png',
      japName: 'Kyu',
      engName: 'nine',
    ),
    Number(
      image: 'assets/images/numbers/number_ten.png',
      japName: 'Ju',
      engName: 'Ten',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322b),
      ),
      body: ListView(
        children: [
          Item(number: numbers[0]),
          Item(number: numbers[1]),
          Item(number: numbers[2]),
          Item(number: numbers[3]),
          Item(number: numbers[4]),
          Item(number: numbers[5]),
          Item(number: numbers[6]),
          Item(number: numbers[7]),
          Item(number: numbers[8]),
          Item(number: numbers[9]),
        ],
      ),
    );
  }
}

// 137
