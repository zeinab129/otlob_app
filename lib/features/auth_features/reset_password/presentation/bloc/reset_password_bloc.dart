import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/data/models/reset_password_model.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/domain/use_cases/reset_password_use_case.dart';
import 'package:meta/meta.dart';

part 'reset_password_event.dart';

part 'reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordUseCase resetPasswordUseCase;

  ResetPasswordBloc({required this.resetPasswordUseCase})
      : super(ResetPasswordInitial()) {
    on<ResetPassBtnEvent>((event, emit) async {
      emit(state.copyWith(status: RequestStatus.loading));
      var result = await resetPasswordUseCase(event.email, event.newPass);
      result.fold((l) {
        emit(state.copyWith(status: RequestStatus.failure, failures: l));
      }, (r) {
        emit(state.copyWith(status: RequestStatus.success, model: r));
      });
    });
  }
}
