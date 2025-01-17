import 'package:equatable/equatable.dart';

abstract class InputEyeEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ChangeCurrentEye extends InputEyeEvent {
  final bool showEye;

  ChangeCurrentEye({required this.showEye});

  @override
  // TODO: implement props
  List<Object?> get props => [showEye];
}
