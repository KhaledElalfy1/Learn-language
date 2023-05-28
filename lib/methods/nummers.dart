
import 'package:flutter/material.dart';
import 'package:learn_language/classes/NumbersClass.dart';
import 'package:audioplayers/audioplayers.dart';

class Numbers extends StatelessWidget {
  const Numbers({required this.num}) ;
  final Number num;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 90,
        color: const Color(0xffF8942D),
        child: Row(
          children: [
            Container(
              color:const Color(0xffFCF0D7) ,
              child: Image.asset(num.image!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text(num.japNum!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Text(num.engNum!,
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
             player.play(AssetSource(num.sound!));

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