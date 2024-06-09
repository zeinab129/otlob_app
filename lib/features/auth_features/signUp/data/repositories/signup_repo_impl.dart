import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/cache/shared_pereference.dart';
import 'package:ecommerce_app/core/errors/failuers.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/data_sources/signup_ds.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/models/signup_model.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/models/signup_request_model.dart';
import 'package:ecommerce_app/features/auth_features/signUp/domain/repositories/signup_repo.dart';

class SignupRepoImpl implements SignupRepo{
  SignupDs signupDs;
  SignupRepoImpl(this.signupDs);

  @override
  Future<Either<Failures, SignupModel>> signup(SignupRequestModel requestModel, String address)async {
    try{
      var result = await signupDs.signup(requestModel);
      CacheHelper.saveData("user_name", result.user?.name);
      CacheHelper.saveData("email", result.user?.email);
      CacheHelper.saveData("pass", requestModel.password);
      CacheHelper.saveData("phone", requestModel.phone);
      CacheHelper.saveData("address", address);
      CacheHelper.saveData("token", result.token);
      return Right(result);
    }catch(e){
      return Left(RemoteFailures(e.toString()));
    }
  }

}