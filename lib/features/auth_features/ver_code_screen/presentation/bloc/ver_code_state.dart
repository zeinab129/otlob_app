part of 'ver_code_bloc.dart';

@immutable
class VerCodeState {
  RequestStatus? status;
  VerCodeModel? verCodeModel;
  Failures? failures;

  VerCodeState({this.status, this.verCodeModel, this.failures});

  VerCodeState copyWith(
      {RequestStatus? status, VerCodeModel? verCodeModel, Failures? failures}) {
    return VerCodeState(
        status: status ?? this.status,
        failures: failures ?? this.failures,
        verCodeModel: verCodeModel ?? this.verCodeModel);
  }
}

final class VerCodeInitialState extends VerCodeState {
  VerCodeInitialState() : super(status: RequestStatus.init);
}
