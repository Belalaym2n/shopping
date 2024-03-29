

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce/features/signup/data/data_sources/remote/remote_ds.dart';

import '../../../../../core/api/api_manager.dart';
import '../../../../../core/api/end_points.dart';
import '../../../../../core/error/failuers.dart';
import '../../models/UserModel.dart';
import '../../models/request_data.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  ApiManager apiManager;

  RemoteDataSourceImpl(this.apiManager);

  @override
  Future<Either<Failures, UserModel>> signUp(RequestData requestData) async {
    try {
      Response response = await apiManager.postData(
          endPoint: EndPoints.signUp, body: requestData.toJson());
      UserModel userModel = UserModel.fromJson(response.data);
      return Right(userModel);
    } catch (e) {
      return Left(RemoteFailure(e.toString()));
    }
  }
}
