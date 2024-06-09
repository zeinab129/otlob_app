import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/data/models/ver_code_model.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/domain/repositories/ver_code_repo.dart';

class VerCodeUseCase {
  VerCodeRepo verCodeRepo;

  VerCodeUseCase(this.verCodeRepo);

  Future<Either<Failures, VerCodeModel>> call(String code) =>
      verCodeRepo.verCode(code);
}
