
import 'package:flutter/material.dart';
import 'package:learn_language/methods/color.dart';

import '../classes/ColorsClass.dart';
class ColorScreen extends StatelessWidget {
  const ColorScreen({Key? key}) : super(key: key);
  final List<Colorr> obj = const [
    Colorr(image: 'assets/images/colors/color_black.png', japName: 'Kuro', engName: 'black', sound: 'sounds/colors/black.wav'),
    Colorr(image: 'assets/images/colors/color_brown.png', japName: 'Chairo', engName: 'brown', sound: 'sounds/colors/brown.wav'),
    Colorr(image: 'assets/images/colors/color_dusty_yellow.png', japName: 'Dasutiierō', engName: 'dusty yellow', sound: 'sounds/colors/dustyyellow.wav'),
    Colorr(image: 'assets/images/colors/color_gray.png', japName: 'Gurē', engName: 'gray', sound: 'sounds/colors/gray.wav'),
    Colorr(image: 'assets/images/colors/color_green.png', japName: 'Midori', engName: 'green', sound: 'sounds/colors/green.wav'),
    Colorr(image: 'assets/images/colors/color_red.png', japName: 'Aka', engName: 'red', sound: 'sounds/colors/red.wav'),
    Colorr(image: 'assets/images/colors/color_white.png', japName: 'Shiro', engName: 'white', sound: 'sounds/colors/white.wav'),
    Colorr(image: 'assets/images/colors/yellow.png', japName: 'Kiiro', engName: 'yellow', sound: 'sounds/colors/yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff483228),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: obj.length,
        itemBuilder: (context, index){
        return Colorrs(col: obj[index]);
      } ,),
    );
  }
}
