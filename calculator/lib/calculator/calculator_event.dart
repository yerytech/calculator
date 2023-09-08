part of 'calculator_bloc.dart';

@immutable
sealed class CalculatorEvent {}


class ResetAC extends CalculatorEvent{}

class AddNumber extends CalculatorEvent{
  final String number;

  AddNumber({required this.number});
}

class Orientation extends CalculatorEvent{
  final bool value;
  Orientation({required this.value});


}