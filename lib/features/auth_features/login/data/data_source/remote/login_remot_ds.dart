import 'package:ecommerce_app/features/auth_features/login/data/model/user_model.dart';

abstract class LoginRemoteDs {
  Future<UserModel> login(String email, String password);

}
