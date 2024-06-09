part of 'forget_pass_bloc.dart';

@immutable
class ForgetPassState {
  RequestStatus? status;
  ForgetPassModel? forgetPassModel;
  Failures? failures;

  ForgetPassState({this.status, this.forgetPassModel, this.failures});

  ForgetPassState copyWith(
      {RequestStatus? status,
      ForgetPassModel? forgetPassModel,
      Failures? failures}) {
    return ForgetPassState(
        status: status ?? this.status,
        failures: failures ?? this.failures,
        forgetPassModel: forgetPassModel ?? this.forgetPassModel);
  }
}

final class ForgetPassInitialState extends ForgetPassState {
  ForgetPassInitialState() : super(status: RequestStatus.init);
}
