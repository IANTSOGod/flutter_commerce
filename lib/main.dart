import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_commerce/components/bloc/home_bloc.dart';
import 'package:flutter_commerce/components/bloc/input_eye_bloc.dart';
import 'package:flutter_commerce/components/bloc/login_bloc.dart';
import 'package:flutter_commerce/components/bloc/signup_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_commerce/components/Custom/constants.dart';
import 'package:flutter_commerce/components/Pages/RoutingErrorPage.dart';
import 'package:flutter_commerce/components/Pages/home.dart';
import 'package:flutter_commerce/components/Pages/login.dart';
import 'package:flutter_commerce/components/Pages/signup.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<LoginBloc>(create: (context)=>LoginBloc()),
    BlocProvider<InputEyeBloc>(create: (context)=>InputEyeBloc()),
    BlocProvider(create: (context)=>SignupBloc()),
    BlocProvider(create: (context)=>HomeBloc()),
  ], child: const Main()));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    ColorSelection colorSelected = ColorSelection.blue;
    final GoRouter _router = GoRouter(routes: [
      GoRoute(path: '/', builder: (context, state) => const Login()),
      GoRoute(
          path: '/notfound',
          builder: (context, state) => const Routingerrorpage()),
      GoRoute(path: '/signup', builder: (context, state) => const Signup()),
      GoRoute(path: '/home', builder: (context, state) => const Home())
    ], initialLocation: '/');
    return ShadApp.router(
      title: "Commerce",
      themeMode: ThemeMode.light,
      theme: ShadThemeData(
        brightness: Brightness.light,
        colorScheme: const ShadZincColorScheme.light(),
      ),
      darkTheme: ShadThemeData(
        brightness: Brightness.dark,
        colorScheme: const ShadZincColorScheme.dark(),
      ),
      routerConfig: _router,
    );
  }
}
