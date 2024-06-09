import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/data/data_sources/ver_code_ds.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/data/models/ver_code_model.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/domain/repositories/ver_code_repo.dart';

class VerCodeRepoImpl implements VerCodeRepo{

  VerCodeDS verCodeDS;


  VerCodeRepoImpl(this.verCodeDS);

  @override
  Future<Either<Failures, VerCodeModel>> verCode(String code) async{
    try {
      var verCodeModel = await verCodeDS.verCode(code);
      return Right(verCodeModel);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }



}