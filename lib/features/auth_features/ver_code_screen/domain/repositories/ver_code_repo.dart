import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/data/models/ver_code_model.dart';

abstract class VerCodeRepo{
  Future<Either<Failures, VerCodeModel>> verCode(String code);

}