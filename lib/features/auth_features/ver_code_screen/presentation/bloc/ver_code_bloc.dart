import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/enums/enums.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/data/models/ver_code_model.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/domain/use_cases/ver_code_use_case.dart';
import 'package:meta/meta.dart';

part 'ver_code_event.dart';

part 'ver_code_state.dart';

class VerCodeBloc extends Bloc<VerCodeEvent, VerCodeState> {
  VerCodeUseCase verCodeUseCase;

  VerCodeBloc(this.verCodeUseCase) : super(VerCodeInitialState()) {
    on<VerCodeBtnEvent>((event, emit) async {
      emit(state.copyWith(status: RequestStatus.loading));
      var result = await verCodeUseCase(event.code);
      result.fold((l) {
        emit(state.copyWith(status: RequestStatus.failure, failures: l));
      }, (r) {
        emit(state.copyWith(status: RequestStatus.success, verCodeModel: r));
      });
    });
  }
}
