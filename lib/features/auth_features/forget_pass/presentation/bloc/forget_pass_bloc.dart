import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/data/models/forget_pass_model.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/domain/use_cases/forget_pass_use_case.dart';
import 'package:meta/meta.dart';

part 'forget_pass_event.dart';

part 'forget_pass_state.dart';

class ForgetPassBloc extends Bloc<ForgetPassEvent, ForgetPassState> {
  ForgetPassUseCase forgetPassUseCase;

  ForgetPassBloc(this.forgetPassUseCase) : super(ForgetPassInitialState()) {
    on<ForgetPassBtnEvent>((event, emit) async {
      emit(state.copyWith(status: RequestStatus.loading));
      var result = await forgetPassUseCase(event.email);
      result.fold((l) {
        emit(state.copyWith(status: RequestStatus.failure, failures: l));
      }, (r) {
        emit(state.copyWith(status: RequestStatus.success, forgetPassModel: r));
      });
    });
  }
}
