import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learn_language/classes/FamilyClass.dart';

class Members extends StatelessWidget {
  const Members({required this.mem}) ;
  final Family mem ;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 90,
        color: const Color(0xff517C30),
        child: Row(
          children: [
            Container(
              color:const Color(0xffFCF0D7) ,
              child: Image.asset(mem.image!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text(mem.japName!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Text(mem.engName!,
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
              player.play(AssetSource(mem.sound!));

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