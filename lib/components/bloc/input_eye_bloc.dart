import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_commerce/components/Events/input_eye_event.dart';
import 'package:flutter_commerce/components/States/input_eye_state.dart';

class InputEyeBloc extends Bloc<InputEyeEvent,InputEyeState>{
  InputEyeBloc(): super(const InputEyeState()){
    on<ChangeCurrentEye>((event,emit) async {
      if(state.isShow){
        emit(state.copyWith(isShow: false));
      }else{
        emit(state.copyWith(isShow: true));
      }
    });
  }
}