part of 'calculator_bloc.dart';

@immutable
sealed class CalculatorState {
 final String  result;
 final  double  ntemp;
 final  String operator;

 const CalculatorState({ required this.result, required this.operator, 
  required this.ntemp, 
  });
}
final class CalculatorInitial extends CalculatorState {
   const CalculatorInitial({required super.result,required super.ntemp,required super.operator ,});



}
