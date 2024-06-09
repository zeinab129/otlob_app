import 'package:ecommerce_app/features/auth_features/forget_pass/data/models/forget_pass_model.dart';

abstract class ForgetPassDS {
  Future<ForgetPassModel> forgetPass(String email);
}
