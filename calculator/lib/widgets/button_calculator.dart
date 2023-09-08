import 'package:flutter/material.dart';

class ButtonCalculator extends StatelessWidget {
  const ButtonCalculator({super.key, required this.funtion, required this.txt, required this.btnColor});

final VoidCallback funtion;
final String txt;
final Color btnColor;
  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(2),
      height: (MediaQuery.of(context).orientation==Orientation.portrait)?
      size.height/8: size.height/8,
      width:(MediaQuery.of(context).orientation==Orientation.portrait)?
      size.height/8: size.height/4,
    //  color: Colors.red,
      child: IconButton(
        
        
        onPressed: funtion, icon: Text(txt,style: TextStyle(fontSize: (MediaQuery.of(context).orientation==Orientation.portrait)?size.width/20:size.width/40,fontWeight: FontWeight.bold),),style: ButtonStyle(backgroundColor:MaterialStateProperty.all(btnColor)),),
    );
  }
}