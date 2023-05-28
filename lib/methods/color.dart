import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learn_language/classes/ColorsClass.dart';

class Colorrs extends StatelessWidget {
  const Colorrs({required this.col}) ;
  final Colorr col ;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 90,
        color: const Color(0xff7C3FA0),
        child: Row(
          children: [
            Container(
              color:const Color(0xffFCF0D7) ,
              child: Image.asset(col.image!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text(col.japName!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Text(col.engName!,
                    style:const  TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),),

                ],
              ),
            ),
            const Spacer(flex: 1,),
            IconButton(onPressed: ()  {
              final player = AudioPlayer();
              player.play(AssetSource(col.sound!));

            },
              icon: Icon(Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
      );
  }
}