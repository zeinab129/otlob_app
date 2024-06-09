import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/models/signup_model.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/models/signup_request_model.dart';
import 'package:ecommerce_app/features/auth_features/signUp/domain/use_cases/signup_usecase.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';

part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupUseCase signupUseCase;

  SignupBloc(this.signupUseCase) : super(SignupInitialState()) {
    on<SignupBtnEvent>(
          (event, emit) async {
        emit(
            state.copyWith(status: RequestStatus.loading)
        );
        var result = await signupUseCase(event.signupRequestModel, event.address);
        result.fold((l) =>
        {
          emit(
              state.copyWith(status: RequestStatus.failure, failures: l)
          )
        }, (r) =>
        {
          emit(
              state.copyWith(status: RequestStatus.success, model: r)
          )
        });
      },
    );
  }
}
