import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/data/models/reset_password_model.dart';

abstract class ResetPasswordRepo {
  Future<Either<Failures, ResetPasswordModel>> resetPass(
      String email, String newPass);
}
