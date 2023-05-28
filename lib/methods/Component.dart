
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  Content({this.text, this.color,this.onTap}) ;
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 15,top: 15),
        height: 60,
        width: double.infinity,
        color: color,
        child: Text(text!,

          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}


