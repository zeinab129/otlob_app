import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/data/models/forget_pass_model.dart';

abstract class ForgetPassRepo {
  Future<Either<Failures, ForgetPassModel>> forgetPass(String email);
}
