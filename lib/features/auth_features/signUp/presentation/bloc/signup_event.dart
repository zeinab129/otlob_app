part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}
class SignupBtnEvent extends SignupEvent{
  SignupRequestModel signupRequestModel;
  String address;

  SignupBtnEvent(this.signupRequestModel, this.address);
}
