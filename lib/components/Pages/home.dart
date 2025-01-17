import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_commerce/components/Events/home_event.dart';
import 'package:flutter_commerce/components/States/home_state.dart';
import 'package:flutter_commerce/components/bloc/home_bloc.dart';
import 'package:lottie/lottie.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc,HomeState>(listener: (context,state){

    },child: Builder(builder: (context){
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<HomeBloc>().add(SearchProducts(query: "all"));
      });
      return Scaffold(
        body: BlocBuilder<HomeBloc,HomeState>(builder: (context,state){
          if(state.isLoading){
            return Center(
              child: Lottie.asset("assets/loading.json"),
            );
          }else{
            return const Text('Home');
          }
        })
      );
    }),);
  }
}
