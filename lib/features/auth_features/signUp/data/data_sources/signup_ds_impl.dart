import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/end_points.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/data_sources/signup_ds.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/models/signup_model.dart';
import 'package:ecommerce_app/features/auth_features/signUp/data/models/signup_request_model.dart';

class SignupDsImpl implements SignupDs{
  @override
  Future<SignupModel> signup(SignupRequestModel requestModel) async{
    ApiManager apiManager = ApiManager();

    var response = await apiManager.postData(endPoint: EndPoints.signUp, body: requestModel.toJson());

    SignupModel signupModel = SignupModel.fromJson(response.data);
    return signupModel;
  }

}