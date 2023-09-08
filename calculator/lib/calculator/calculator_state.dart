part of 'calculator_bloc.dart';

@immutable
sealed class CalculatorState {
 final String  result;
 final  double  ntemp;
 final  String operator;
 final bool  landScape ;
 const CalculatorState({ required this.result, required this.operator, 
  required this.ntemp, this.landScape=true
  });
}
final class CalculatorInitial extends CalculatorState {
   const CalculatorInitial({required super.result,required super.ntemp,required super.operator ,super.landScape});



}
