import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/cache/shared_pereference.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/login/data/data_source/remote/login_remot_ds.dart';
import 'package:ecommerce_app/features/auth_features/login/domain/entity/response_entity.dart';
import 'package:ecommerce_app/features/auth_features/login/domain/repository/login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  LoginRemoteDs loginRemoteDs;

  LoginRepoImpl(this.loginRemoteDs);

  @override
  Future<Either<Failures, ResponseEntity>> login(
      String email, String password) async {
    try {
      var userModel = await loginRemoteDs.login(email, password);
      CacheHelper.saveData("token", userModel.token);
      print(CacheHelper.getToken("token"));
      return Right(userModel);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

}
