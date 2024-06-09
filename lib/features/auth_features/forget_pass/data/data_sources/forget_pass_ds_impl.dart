import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/end_points.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/data/data_sources/forget_pass_ds.dart';
import 'package:ecommerce_app/features/auth_features/forget_pass/data/models/forget_pass_model.dart';

class ForgetPassDSImpl extends ForgetPassDS {
  @override
  Future<ForgetPassModel> forgetPass(String email) async {
    ApiManager apiManager = ApiManager();

    Response response = await apiManager
        .postData(endPoint: EndPoints.forgetPass, body: {"email": email});

    ForgetPassModel forgetPassModel = ForgetPassModel.fromJson(response.data);
    return forgetPassModel;
  }
}
