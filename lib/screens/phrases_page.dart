
import 'package:flutter/material.dart';
import 'package:learn_language/methods/phrases.dart';

import '../classes/PhrasesClass.dart';
class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);
  final List<Phrase> obj = const [
    Phrase(japName: "Kōdoku suru koto o wasurenaide kudasai", engName: "don't forget to subscribe", sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    Phrase(japName: "Kimasu ka", engName: "are you coming", sound: 'sounds/phrases/are_you_coming.wav'),
    Phrase(japName: "Go kibun wa ikagadesu ka.", engName: "how are you feeling", sound: 'sounds/phrases/how_are_you_feeling.wav'),
    Phrase(japName: "Watashi wa anime ga daisukidesu.", engName: "i love anime", sound: 'sounds/phrases/i_love_anime.wav'),
    Phrase(japName: "Watashi wa puroguramingu ga daisukidesu.", engName: "i love programming", sound: 'sounds/phrases/i_love_programming.wav'),
    Phrase(japName: "Puroguramingu wa kantandesu.", engName: "programming is easy", sound: 'sounds/phrases/programming_is_easy.wav'),
    Phrase(japName: "Namae wa nandesu ka.", engName: "what is your name", sound: 'sounds/phrases/what_is_your_name.wav'),
    Phrase(japName: "Doko ni iku no.", engName: "where are you going", sound: 'sounds/phrases/where_are_you_going.wav'),
    Phrase(japName: "Hai, kimasu.", engName: "yes i am coming", sound: 'sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff483228),
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: obj.length,
        itemBuilder: (context, index) {
        return Phrases(phr: obj[index]);
      } ,),
    );
  }
}
