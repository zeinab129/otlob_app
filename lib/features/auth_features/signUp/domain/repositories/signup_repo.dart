import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/models/signup_model.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/models/signup_request_model.dart';

abstract class SignupRepo {
  Future<Either<Failures, SignupModel>> signup(SignupRequestModel requestModel, String address);
}
