part of 'ver_code_bloc.dart';

@immutable
abstract class VerCodeEvent {}

class VerCodeBtnEvent extends VerCodeEvent {
  String code;

  VerCodeBtnEvent({required this.code});
}
