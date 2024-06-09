import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/data/models/reset_password_model.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/domain/repositories/reset_password_repo.dart';

class ResetPasswordUseCase {
  ResetPasswordRepo resetPasswordRepo;

  ResetPasswordUseCase(this.resetPasswordRepo);

  Future<Either<Failures, ResetPasswordModel>> call(
          String email, String newPass) =>
      resetPasswordRepo.resetPass(email, newPass);
}
