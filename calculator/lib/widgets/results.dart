
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../calculator/calculator_bloc.dart';


class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
   

    var size = MediaQuery.of(context).size;
    return BlocBuilder<CalculatorBloc,CalculatorState>(builder: (context,state){
      return    
    Container(
      alignment: Alignment.bottomRight,
      
      child: Text(state.result,style: TextStyle(fontSize:size.width/5,color: Colors.white),),
    );
    }
    
    
    
    
    
    ) ;
    
    
    
 
  }
}