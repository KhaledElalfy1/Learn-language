
import 'package:flutter/material.dart';
import 'package:learn_language/screens/Numbers_page.dart';
import 'package:learn_language/screens/phrases_page.dart';
import 'package:learn_language/screens/welcome_screen.dart';
import 'Color_screen.dart';
import 'Family_page.dart';

import '../methods/Component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFEF3D7),
        appBar: AppBar(
          backgroundColor: const Color(0xff483228),
          leading: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const WelcomeToApp();
            },));
          },
            icon: const Icon(Icons.arrow_back),),
          title: const Text('Toku',
          ),
        ),
        body: Column(
          children: [
            Content(text:'Numbers',
                    color:const Color(0xffF8942F),
                    onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                         return const NumbersPage();
                   }));

                }),
            Content(text:'Family Members',
                color:const Color(0xff527F30),
                onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const FamilyMembers();
                      }));
                }
                ),
            Content(text:'Colors',
                color:const Color(0xff7C3FA0),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const ColorScreen();
                }));
              },
            ),
            Content(text:'Phrases',
                color:const Color(0xff46A4C9),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const PhrasesScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}


