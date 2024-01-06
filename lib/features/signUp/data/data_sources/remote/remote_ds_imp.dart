import 'package:dio/dio.dart';
import 'package:e_commerce/core/api/api_manager.dart';
import 'package:e_commerce/core/api/end_points.dart';
import 'package:e_commerce/features/signUp/data/data_sources/remote/remote_ds.dart';
import 'package:e_commerce/features/signUp/data/models/UserModel.dart';
import 'package:e_commerce/features/signUp/data/models/request_data.dart';

class RemoteDataSourecImo implements RemoteDataSource {
  ApiManager apiManager;


  RemoteDataSourecImo(this.apiManager);

  @override
  Future<UserModel> signUP(RequestData requestData) async{
    try {
    Response response=await  apiManager.getData(
          endPoint: EndPoints.signUpIndPoint, data: requestData.toJson());
    UserModel userModel=UserModel.fromJson(response.data);
    print(userModel.token??'error');
    return userModel;
    } catch (e) {
      throw Exception();
    }
  }}