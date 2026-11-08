import 'package:flutter/material.dart';
import 'package:toku_app/models/numbers.dart';

class Item extends StatelessWidget {
  final Number number;

  const Item({super.key,required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xffef9235),
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                  number.japName,
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
                Text(
                  number.engName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.play_arrow, color: Colors.white, size: 34),
          ),
        ],
      ),
    );
  }
}
