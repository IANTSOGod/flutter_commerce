import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_commerce/components/Events/login_event.dart';
import 'package:flutter_commerce/components/States/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginSubmitted>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        // Simulate an API call
        await Future.delayed(const Duration(seconds: 2));

        if (event.email == "test@example.com" && event.password == "password") {
          emit(state.copyWith(isLoading: false, isSuccess: true));
        } else {
          emit(state.copyWith(
              isLoading: false, errorMessage: "Invalid credentials"));
        }
      } catch (_) {
        emit(state.copyWith(
            isLoading: false, errorMessage: "An unexpected error occurred"));
      }
    });
  }
}
