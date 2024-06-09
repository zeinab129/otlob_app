import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/end_points.dart';
import 'package:ecommerce_app/features/auth_features/login/data/data_source/remote/login_remot_ds.dart';
import 'package:ecommerce_app/features/auth_features/login/data/model/user_model.dart';

class LoginRemoteDsImpl implements LoginRemoteDs {
  @override
  Future<UserModel> login(String email, String password) async {
    ApiManager apiManager = ApiManager();

    Response response = await apiManager.postData(
        endPoint: EndPoints.login,
        body: {"email": email, "password": password});

    UserModel userModel = UserModel.fromJson(response.data);
    return userModel;
  }
}
