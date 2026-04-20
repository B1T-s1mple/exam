import 'package:bloc/bloc.dart';

class NewMavzuCubir extends Cubit<dynamic> {
  NewMavzuCubir() : super(1);

  void son() {
    emit(state + 1);
  }

  void son_re() {
    if(state >= 1){
      emit(state - 1);
    }
    
  }
    void son_reset() {
    emit( 0);
  }
}
