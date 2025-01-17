import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_commerce/components/Events/signup_event.dart';
import 'package:flutter_commerce/components/States/signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignUpState> {
  //bloc herite du state
  SignupBloc() : super(const SignUpState()) {
    //lors de l'event qui retourne les données
    on<SignupSubmitted>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {

        await Future.delayed(const Duration(seconds: 2));
        if(event.email=="iantsochristianrazafindrazaka@gmail.com"){
          emit(state.copyWith(isLoading: false,isCreated: true));
        }
        else{
          emit(state.copyWith(isLoading: false, errorMessage: "Invalid credentials"));
        }
      }
      catch (error) {
        emit(state.copyWith(
            isLoading: false, errorMessage: "An unexpected error occurred"));
      }
    });
  }

}