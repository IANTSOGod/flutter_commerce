import 'package:equatable/equatable.dart';

//creation classe abstraite
abstract class SignupEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

//creation d"un evenement
class SignupSubmitted extends SignupEvent{
  final String fname;
  final String lname;
  final String email;
  final String password;

  SignupSubmitted({
    required this.lname,
    required this.fname,
    required this.email,
    required this.password
});

  @override
  List<Object?> get props=>[lname,fname,email,password];
}