import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter_commerce/components/Custom/Inputs.dart';
import 'package:flutter_commerce/components/Events/signup_event.dart';
import 'package:flutter_commerce/components/States/signup_state.dart';
import 'package:flutter_commerce/components/bloc/signup_bloc.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    final TextEditingController _email = TextEditingController();
    final TextEditingController _password = TextEditingController();
    final TextEditingController _fname = TextEditingController();
    final TextEditingController _lname = TextEditingController();

    return Scaffold(
      body:  BlocListener<SignupBloc, SignUpState>(
        listener: (context, state) => {
          if (state.isCreated)
            {context.go('/')}
          else if (state.errorMessage.isNotEmpty)
            {context.go('/notfound')}
        },
        child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "SignUp",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                const SizedBox(
                  height: 50,
                ),
                Inputs(
                  controller: _fname,
                  currentLabel: "First name",
                  obscrure: false,
                  currentError: "",
                ),
                const SizedBox(
                  height: 30,
                ),
                Inputs(
                  controller: _lname,
                  currentLabel: "Last name",
                  obscrure: false,
                  currentError: "",
                ),
                const SizedBox(
                  height: 30,
                ),
                Inputs(
                  controller: _email,
                  currentLabel: "Email",
                  obscrure: false,
                  currentError: "",
                ),
                const SizedBox(
                  height: 30,
                ),
                Inputs(
                  controller: _password,
                  currentLabel: "Password",
                  obscrure: false,
                  currentError: "",
                ),
                const SizedBox(
                  height: 20,
                ),
                BlocBuilder<SignupBloc, SignUpState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: ShadButton(
                            icon: SizedBox.square(
                              dimension: 16,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                              ),
                            ),
                            width: 300,
                            child: Text('Please wait'),
                          ),
                        );
                      }
                      return Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: ShadButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              final email = _email.text;
                              final fname = _fname.text;
                              final lname = _lname.text;
                              final password = _password.text;
                              context.read<SignupBloc>().add(SignupSubmitted(
                                  lname: lname,
                                  fname: fname,
                                  email: email,
                                  password: password));
                            }
                          },
                          width: 300,
                          backgroundColor:
                          ShadTheme.of(context).colorScheme.primary,
                          shadows: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(.4),
                              spreadRadius: 4,
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                          ],
                          child: const Text('Sign up'),
                        ),
                      );
                    }),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ShadButton.secondary(
                    onPressed: () {
                      context.go('/');
                    },
                    width: 300,
                    child: const Text('Cancel'),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
