import 'package:ecommerce_app/features/auth_features/ver_code_screen/data/models/ver_code_model.dart';

abstract class VerCodeDS{
  Future<VerCodeModel> verCode(String code);
}