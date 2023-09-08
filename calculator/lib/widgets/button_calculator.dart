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
      padding: const EdgeInsets.all(8),
      height: size.height/8,
      width: size.width/4,
    //  color: Colors.red,
      child: IconButton(
        
        
        onPressed: funtion, icon: Text(txt,style: TextStyle(fontSize: size.width/20),),style: ButtonStyle(backgroundColor:MaterialStateProperty.all(btnColor)),),
    );
  }
}