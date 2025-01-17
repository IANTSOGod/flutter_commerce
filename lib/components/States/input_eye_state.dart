import 'package:equatable/equatable.dart';

class InputEyeState extends Equatable {
  final bool isShow;

  const InputEyeState({this.isShow = true});

  InputEyeState copyWith({bool? isShow}) {
    return InputEyeState(isShow: isShow ?? this.isShow);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [isShow];
}
