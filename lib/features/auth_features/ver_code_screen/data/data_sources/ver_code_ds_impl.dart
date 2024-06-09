import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/end_points.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/data/data_sources/ver_code_ds.dart';
import 'package:ecommerce_app/features/auth_features/ver_code_screen/data/models/ver_code_model.dart';

class VerCodeDSImpl extends VerCodeDS {
  @override
  Future<VerCodeModel> verCode(String code) async {
    ApiManager apiManager = ApiManager();

    Response response = await apiManager
        .postData(endPoint: EndPoints.verCode, body: {"resetCode": code});

    VerCodeModel verCodeModel = VerCodeModel.fromJson(response.data);
    return verCodeModel;
  }
}
