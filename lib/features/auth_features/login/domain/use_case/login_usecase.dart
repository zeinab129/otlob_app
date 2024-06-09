import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/login/domain/entity/response_entity.dart';
import 'package:ecommerce_app/features/auth_features/login/domain/repository/login_repo.dart';

class LoginUseCase {
  LoginRepo repo;

  LoginUseCase(this.repo);

  Future<Either<Failures, ResponseEntity>> call(
          String email, String password) =>
      repo.login(email, password);


}
