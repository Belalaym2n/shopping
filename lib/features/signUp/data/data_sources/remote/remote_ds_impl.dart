import 'package:dio/dio.dart';
import 'package:e_commerce/core/api/end_points.dart';
import 'package:e_commerce/features/signup/data/data_sources/remote/remote_ds.dart';

import '../../../../../core/api/api_manager.dart';
import '../../models/UserModel.dart';
import '../../models/request_data.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  ApiManager apiManager;

  RemoteDataSourceImpl(this.apiManager);

  @override
  Future< UserModel> signUp(RequestData requestData) async {
    try {
      Response response = await apiManager.postData(
          endPoint: EndPoints.signInIndPoint, body: requestData.toJson());

      UserModel userModel = UserModel.fromJson(response.data);
      return userModel;
    } catch (e) {
      return throw e.toString();
    }
  }
}
