import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/data/data_sources/forget_pass_ds.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/data/models/forget_pass_model.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/domain/repositories/forget_pass_repo.dart';

class ForgetPassRepoImpl extends ForgetPassRepo{

  ForgetPassDS forgetPassDS;


  ForgetPassRepoImpl(this.forgetPassDS);

  @override
  Future<Either<Failures, ForgetPassModel>> forgetPass(String email) async {
    try {
      var forgetPassModel = await forgetPassDS.forgetPass(email);
      return Right(forgetPassModel);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

}