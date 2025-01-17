import 'package:equatable/equatable.dart';

class SignUpState extends Equatable {
  final bool isLoading;
  final bool isCreated;
  final String errorMessage;

  const SignUpState({
    this.isLoading = false,
    this.isCreated=false,
    this.errorMessage="",
  });

  SignUpState copyWith({
    bool? isLoading,
    bool? isCreated,
    String? errorMessage,
  }) {
    return SignUpState(isLoading: isLoading ?? this.isLoading,
        isCreated: isCreated ?? this.isCreated,
        errorMessage: errorMessage ?? this.errorMessage);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [isLoading,isCreated,errorMessage];

}