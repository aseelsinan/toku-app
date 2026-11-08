import 'package:flutter/material.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322b),
      ),
      body: Container(
        height: 100,
        color:Color(0xffef9235),
        child:Row(
          children: [
            
            Container(color:Color(0xffFFF6DC) ,
              child: Image.asset('assets/images/numbers/number_one.png',)),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column( 
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                 
                children: [
                Text('Ichi'
                ,style: TextStyle(color: Colors.white ,fontSize: 23),
                ),
                Text('One'
                ,style: TextStyle(color: Colors.white ,fontSize: 18)
                ,),
              ],
                         ),
            ),
           Spacer(flex:1)
          ,Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.play_arrow,color: Colors.white,size: 34,),
          ),
          ],
        )
      )
    );
  }
}



// 133