
import 'package:flutter/material.dart';
import 'package:learn_language/classes/FamilyClass.dart';

import '../methods/members.dart';
class FamilyMembers extends StatelessWidget {
  const FamilyMembers({Key? key}) : super(key: key);
  final List <Family> obj = const [
    Family(image: 'assets/images/family_members/family_father.png',japName: 'Chichioya',engName: 'Father',sound: 'sounds/family_members/father.wav'),
    Family(image: 'assets/images/family_members/family_daughter.png',japName: 'Musume',engName: 'daughter',sound: 'sounds/family_members/daughter.wav'),
    Family(image: 'assets/images/family_members/family_grandfather.png',japName: 'Ojīsan',engName: 'grandfather',sound: 'sounds/family_members/grandfather.wav'),
    Family(image: 'assets/images/family_members/family_mother.png',japName: 'Hahaoya',engName: 'mother',sound: 'sounds/family_members/mother.wav'),
    Family(image: 'assets/images/family_members/family_grandmother.png',japName: 'O bāchan',engName: 'grandmother',sound: 'sounds/family_members/grandmother.wav'),
    Family(image: 'assets/images/family_members/family_older_brother.png',japName: 'Ani',engName: 'older brother',sound: 'sounds/family_members/olderbother.wav'),
    Family(image: 'assets/images/family_members/family_older_sister.png',japName: 'Ane',engName: 'older sister',sound: 'sounds/family_members/oldersister.wav'),
    Family(image: 'assets/images/family_members/family_younger_brother.png',japName: 'Otōto',engName: 'younger brother',sound: 'sounds/family_members/youngerbrohter.wav'),
    Family(image: 'assets/images/family_members/family_younger_sister.png',japName: 'Imōto',engName: 'younger sister',sound: 'sounds/family_members/youngersister.wav'),
    Family(image: 'assets/images/family_members/family_son.png',japName: 'Musuko',engName: 'son',sound: 'sounds/family_members/son.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff453024),
        title: const Text('Family Member'),
      ),
      body: ListView.builder(
        itemCount: obj.length,
          itemBuilder:(context, index) {
                return Members(mem: obj[index],);
          },
      ) ,
    );
  }
}
