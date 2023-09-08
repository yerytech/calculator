import 'package:calculator/widgets/widgets.dart';
import 'package:flutter/material.dart';


class HomeScreenCalculator extends StatelessWidget {
const HomeScreenCalculator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ 
          Expanded(child: Result()),
          Divider(),
          KeyBoardCalculator(),
      ],)
   );
  }
}