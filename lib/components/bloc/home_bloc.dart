import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_commerce/components/Events/home_event.dart';
import 'package:flutter_commerce/components/States/home_state.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  HomeBloc(): super(const HomeState()){
    on<SearchProducts>((event,emit) async {
      emit(state.copyWith(isLoading: true));
      try{
        await Future.delayed(const Duration(seconds: 5));
        emit(state.copyWith(isLoading: false));
      }catch(_){
        emit(state.copyWith(isLoading: false));
      }
    });
  }
}