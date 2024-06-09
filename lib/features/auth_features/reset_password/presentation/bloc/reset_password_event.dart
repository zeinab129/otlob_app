part of 'reset_password_bloc.dart';

@immutable
class ResetPasswordEvent {}

class ResetPassBtnEvent extends ResetPasswordEvent {
  String email;
  String newPass;

  ResetPassBtnEvent({required this.email, required this.newPass});
}
