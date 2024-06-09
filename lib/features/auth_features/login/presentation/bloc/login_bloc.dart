import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/login/domain/entity/response_entity.dart';
import 'package:ecommerce_app/features/auth_features/login/domain/use_case/login_usecase.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginUseCase loginUseCase;
  LoginBloc(this.loginUseCase) : super(LoginInitialState()) {
    on<LoginButtonEvent>((event, emit) async{
      //var result = await loginUseCase.call(event.email, event.password);
      emit(state.copyWith(status: RequestStatus.loading));
      var result = await loginUseCase(event.email, event.password);
      result.fold((l) {
        emit(state.copyWith(status: RequestStatus.failure, failures: l));
      }, (r) {
        emit(state.copyWith(status: RequestStatus.success, entity: r));
      });
    });


  }
}


