import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learn_language/classes/PhrasesClass.dart';

class Phrases extends StatelessWidget {
  const Phrases({required this.phr}) ;
  final Phrase phr ;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 90,
        color: const Color(0xff46A4C9),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text(phr.japName!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Text(phr.engName!,
                    style:const  TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),

                ],
              ),
            ),
            const Spacer(flex: 1,),
            IconButton(onPressed: ()  {
              final player = AudioPlayer();
              player.play(AssetSource(phr.sound!));

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