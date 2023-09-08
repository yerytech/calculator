import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super( const CalculatorInitial(result: '0', ntemp: 0.0, operator: '')) {
    on<CalculatorEvent>((event, emit) {
      if (event is ResetAC) {

        emit(  CalculatorInitial(result: '0', ntemp: state.ntemp, operator:state.operator));
      
        
      }else if (event is AddNumber) {
        
        

       dot() {
         if (state.result.length==1) {
          var result = '${state.result}.';
           emit(CalculatorInitial(result: result, ntemp: state.ntemp, operator:state.operator));
         }
          
        }

        // Define las funciones para manejar los casos específicos.
        number() {
            var result = (state.result == '0') ? event.number : state.result + event.number;
              emit(CalculatorInitial(result: result, ntemp: state.ntemp, operator:state.operator));
        }
        // Borra el ultimo digitio
       delete() {
          if(state.result.length>1){
            var   result=state.result.substring(0,state.result.length-1);
             emit(CalculatorInitial(result: result, ntemp: state.ntemp, operator:state.operator));


          }

        }
          
          // Entrega el resultado 
        
        //  Cambiar de positivo a negativo y viceversa 
        positiveNegative() {
          final currentResult= state.result;

          final resul=currentResult.startsWith('-')
                      ?currentResult.substring(1)
                      :'-$currentResult';
             emit(CalculatorInitial(result: resul, ntemp: state.ntemp, operator:state.operator));
        }

        percentage() {
         if (state.result!='0') {
          // var result=(double.parse(state.result)/100).toStringAsFixed(2);
          emit(CalculatorInitial(ntemp:double.parse(state.result) ,result: '0',operator: event.number));
           
         }


        }

        void operator() {
          //Lógica para operadores matemáticos
      
         if (state.result!='0') {
          
             emit(CalculatorInitial(ntemp:double.parse(state.result) ,result: '0',operator: event.number));
               
         }
               
      
          // Lógica para operadores (/, X, -, +)
        }   equal() {

          
        if (state.result!='0') {
          double result;
          switch (state.operator) {
            case '+':
              result=state.ntemp+double.parse(state.result);
              break;
            case '-':
              result=state.ntemp-double.parse(state.result);
              break;
            case '/':
              result=state.ntemp/double.parse(state.result);
              break;
            case 'X':
              result=state.ntemp*double.parse(state.result);
              break;
            case '%':
              result=state.ntemp *double.parse(state.result)/ 100;
              break;

            default:
            result=state.ntemp;
          }
            


          emit(CalculatorInitial(result:'$result'.replaceAll('.0', ''), ntemp: 0.0, operator: ''));
          
        }
          
        }


        final operators = {
            '1': number,
            '2': number,
            '3': number,
            '4': number,
            '5': number,
            '6': number,
            '7': number,
            '8': number,
            '9': number,
            '0': number,
            '.': dot,
            'd': delete,
            '=': equal,
            '+/-': positiveNegative,
            '%': percentage,
            '/': operator,
            'X': operator,
            '-': operator,
            '+': operator,
          };
          if (operators.containsKey(event.number)) {
            operators[event.number]!();
          }
       

        }




            });

          }
        }
