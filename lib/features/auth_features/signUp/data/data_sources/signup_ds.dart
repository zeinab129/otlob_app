import 'package:ecommerce_app/features/auth_features/signUp/data/models/signup_model.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/models/signup_request_model.dart';

abstract class SignupDs{

  Future<SignupModel>signup(SignupRequestModel requestModel);

}