
import 'package:flutter/material.dart';
import 'package:learn_language/screens/welcome_screen.dart';

import 'screens/Home_page.dart';

void main()
{
  runApp(const TokuApp());
}
class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeToApp(),
    );
  }
}

