import 'package:ecommerce_app/features/auth_features/reset_password/data/models/reset_password_model.dart';

abstract class ResetPasswordDS{
  Future<ResetPasswordModel> resetPass(String email, String newPass);
}