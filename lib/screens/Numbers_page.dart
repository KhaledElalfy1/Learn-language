
import 'package:flutter/material.dart';
import 'package:learn_language/classes/NumbersClass.dart';
import '../methods/nummers.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List <Number> obj  = const [
    Number(image: 'assets/images/numbers/number_one.png', japNum: 'ichi', engNum: 'one',sound: 'sounds/numbers/number_one_sound.mp3'),
    Number(image: 'assets/images/numbers/number_two.png', japNum: 'Ni', engNum: 'Two',sound: 'sounds/numbers/number_two_sound.mp3'),
    Number(image: 'assets/images/numbers/number_three.png', japNum: 'San', engNum: 'three',sound:'sounds/numbers/number_three_sound.mp3' ),
    Number(image: 'assets/images/numbers/number_four.png', japNum: 'shi', engNum: 'four',sound:'sounds/numbers/number_four_sound.mp3'),
    Number(image: 'assets/images/numbers/number_five.png', japNum: 'Go', engNum: 'five',sound:'sounds/numbers/number_five_sound.mp3'),
    Number(image: 'assets/images/numbers/number_six.png', japNum: 'Roku', engNum: 'six',sound: 'sounds/numbers/number_six_sound.mp3'),
    Number(image: 'assets/images/numbers/number_seven.png', japNum: 'Sebun', engNum: 'seven',sound: 'sounds/numbers/number_seven_sound.mp3'),
    Number(image: 'assets/images/numbers/number_eight.png', japNum: 'Hachi', engNum: 'eight',sound: 'sounds/numbers/number_eight_sound.mp3'),
    Number(image: 'assets/images/numbers/number_nine.png', japNum: 'Kyū', engNum: 'nine',sound: 'sounds/numbers/number_nine_sound.mp3'),
    Number(image: 'assets/images/numbers/number_ten.png', japNum: 'Jū', engNum: 'ten',sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff453024),
        title: Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: obj.length,
        itemBuilder: (context, index) {
          return Numbers(num: obj[index]);
        },
      ),

    );
  }
}
