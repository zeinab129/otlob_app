part of 'forget_pass_bloc.dart';

@immutable
abstract class ForgetPassEvent {}

class ForgetPassBtnEvent extends ForgetPassEvent {
  String email;

  ForgetPassBtnEvent({required this.email});
}
