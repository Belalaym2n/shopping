import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce/features/login/data/data_sources/remote/remote_ds.dart';

import '../../../../../core/api/api_manager.dart';
import '../../../../../core/api/end_points.dart';
import '../../../../../core/error/failuers.dart';
import '../../../../signup/data/models/UserModel.dart';

class LoginRemoteDSImpl implements LoginRemoteDS {
  ApiManager apiManager;

  LoginRemoteDSImpl(this.apiManager);

  @override
  Future<Either<Failures, UserModel>> login(
      String email, String password) async {
    try {
      Response response = await apiManager.postData(
          endPoint: EndPoints.signIN,
          body: {"email": email, "password": password});

      UserModel userModel = UserModel.fromJson(response.data);

      return Right(userModel);
    } catch (e) {
      return Left(RemoteFailure(e.toString()));
    }
  }
}
