
import 'package:flutter/material.dart';
import 'package:learn_language/screens/Home_page.dart';

class WelcomeToApp extends StatelessWidget {
  const WelcomeToApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF3D7),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:    [
          const Center(
            child: CircleAvatar(
                     radius: 150,
                     backgroundImage: AssetImage('assets/images/welcome/img.png'),
                   ),
          ),
          const SizedBox(height: 2,),
          const Text('WELCOME TO TUKO',
            style: TextStyle(
              fontSize: 35,
              fontFamily:'Righteous'
            ),
          ),
          const SizedBox(height: 2,),
          const Text('Guide for learning Japanese',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,

            ),
          ),
          const SizedBox(height: 10,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const HomePage();
                },));
              },
              child:  Container(

                height: 60,
                width: 280,
                alignment: Alignment.center,

                decoration: const BoxDecoration(

                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: const Text('Start learning',
                  style: TextStyle(
                      fontSize: 30
                  ),
                ),

              ),
            ),

          )

        ],
      ) ,
    );
  }
}
