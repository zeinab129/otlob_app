import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/data/models/forget_pass_model.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/domain/repositories/forget_pass_repo.dart';

class ForgetPassUseCase {
  ForgetPassRepo forgetPassRepo;

  ForgetPassUseCase(this.forgetPassRepo);

  Future<Either<Failures, ForgetPassModel>> call(String email) =>
      forgetPassRepo.forgetPass(email);
}
