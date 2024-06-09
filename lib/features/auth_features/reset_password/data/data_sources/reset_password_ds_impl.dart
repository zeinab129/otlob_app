import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/end_points.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/data/data_sources/reset_password_ds.dart';
import 'package:ecommerce_app/features/auth_features/reset_password/data/models/reset_password_model.dart';

class ResetPasswordDSImpl implements ResetPasswordDS {
  @override
  Future<ResetPasswordModel> resetPass(String email, String newPass) async {
    ApiManager apiManager = ApiManager();

    Response response = await apiManager.putData(
        endPoint: EndPoints.resetPassword,
        body: {"email": email, "newPassword": newPass});

    ResetPasswordModel resetPasswordModel =
        ResetPasswordModel.fromJson(response.data);
    return resetPasswordModel;
  }
}
