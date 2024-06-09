part of 'reset_password_bloc.dart';

@immutable
class ResetPasswordState {
  RequestStatus? status;
  ResetPasswordModel? model;
  Failures? failure;

  ResetPasswordState({this.status, this.model, this.failure});

  copyWith(
      {RequestStatus? status, ResetPasswordModel? model, Failures? failures}) {
    return ResetPasswordState(
        status: status ?? this.status,
        model: model ?? this.model,
        failure: failure ?? this.failure);
  }
}

final class ResetPasswordInitial extends ResetPasswordState {
  ResetPasswordInitial() : super();
}
