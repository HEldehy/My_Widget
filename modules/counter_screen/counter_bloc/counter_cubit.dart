import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwork/modules/counter_screen/counter_bloc/counter_states.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterInitialState());
  
  static CounterCubit get(context)=>BlocProvider.of(context);
  int counter = 1;
  void minusCounter(){
     counter--;
     emit(CounterPlusState());
}
void plusCounter(){
    counter++;
    emit(CounterPlusState());
}
}