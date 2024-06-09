import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/models/signup_model.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/models/signup_request_model.dart';
import 'package:ecommerce_app/features/auth_features/signUp/domain/repositories/signup_repo.dart';

class SignupUseCase {
  SignupRepo repo;

  SignupUseCase(this.repo);

  Future<Either<Failures, SignupModel>> call(
          SignupRequestModel requestModel, String address) =>
      repo.signup(requestModel, address);
}
