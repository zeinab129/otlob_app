import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/login/domain/entity/response_entity.dart';

abstract class LoginRepo{
  Future<Either<Failures, ResponseEntity>>login(String email, String password);
}