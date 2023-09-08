
import 'package:calculator/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../calculator/calculator_bloc.dart';

class KeyBoardCalculator extends StatelessWidget {
  const KeyBoardCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    var operationColors=Colors.yellow;
    var otherFuntionColors=Colors.grey.shade300;
    var  numberColors= Colors.brown.shade200;

     final calcularorBloc= BlocProvider.of<CalculatorBloc>(context);
    return Container(
     
     color: Colors.black ,
      // alignment: Alignment.bottomCenter,
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                Column(
                 
                children: [
                  ButtonCalculator(funtion:()=>calcularorBloc.add(ResetAC()) , txt: 'AC', btnColor: otherFuntionColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '7')) , txt: '7', btnColor:numberColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '4')) , txt: '4', btnColor: numberColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '1')) , txt: '1', btnColor: numberColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '0')) , txt: '0', btnColor: numberColors),
                  ],),   
                Column(
                children: [
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '+/-')) , txt: '+/-', btnColor: otherFuntionColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '8')) , txt: '8', btnColor: numberColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '5')) , txt: '5', btnColor: numberColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '2')) , txt: '2', btnColor: numberColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '.')) , txt: '.', btnColor: numberColors),
                  ],),   
                Column(
                children: [
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '%')) , txt: '%', btnColor:otherFuntionColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '9')) , txt: '9', btnColor: numberColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '6')) , txt: '6', btnColor: numberColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '3')) , txt: '3', btnColor: numberColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: 'd')) , txt: 'Del', btnColor: Colors.blueAccent),
                  ],),   
                Column(
                children: [
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '/')), txt: '/', btnColor: operationColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: 'X')), txt: 'X', btnColor: operationColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '-')), txt: '-', btnColor: operationColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '+')), txt: '+', btnColor: operationColors),
                  ButtonCalculator(funtion:()=>calcularorBloc.add(AddNumber(number: '=')), txt: '=', btnColor: operationColors),
                  ],),   
                     ],),





    );
  }
}