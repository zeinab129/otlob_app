import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/data/data_sources/reset_password_ds.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/data/models/reset_password_model.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/domain/repositories/reset_password_repo.dart';

class ResetPasswordRepoImpl implements ResetPasswordRepo {
  ResetPasswordDS resetPasswordDS;

  ResetPasswordRepoImpl(this.resetPasswordDS);

  @override
  Future<Either<Failures, ResetPasswordModel>> resetPass(
      String email, String newPass) async {
    try {
      var resetPassModel = await resetPasswordDS.resetPass(email, newPass);
      return Right(resetPassModel);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
