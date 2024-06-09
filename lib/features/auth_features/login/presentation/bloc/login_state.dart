part of 'login_bloc.dart';


@immutable
class LoginState {
  RequestStatus? status;
  ResponseEntity? entity;
  Failures? failures;

  LoginState({this.status, this.entity, this.failures});

  LoginState copyWith(
      {RequestStatus? status, ResponseEntity? entity, Failures? failures}) {
    return LoginState(status: status ?? this.status,
        failures: failures ?? this.failures,
        entity: entity ?? this.entity);
  }
}

final class LoginInitialState extends LoginState {
  LoginInitialState(): super(status: RequestStatus.init);
}
