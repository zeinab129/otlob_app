part of 'signup_bloc.dart';

@immutable
class SignupState {
  RequestStatus? status;
  SignupModel? model;
  Failures? failures;

  SignupState({this.status, this.model, this.failures});

  copyWith({
    RequestStatus? status,
    SignupModel? model,
    Failures? failures,
  }) {
    return SignupState(
        status: status ?? this.status,
        model: model ?? this.model,
        failures: failures ?? this.failures);
  }
}

final class SignupInitialState extends SignupState {
  SignupInitialState() : super(status: RequestStatus.init);
}
