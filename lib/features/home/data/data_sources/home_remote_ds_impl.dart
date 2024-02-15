import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/api/api_manager.dart';
import '../../../../core/api/end_points.dart';
import '../../../../core/error/failuers.dart';
import '../models/CartModel.dart';
import '../models/CategoryAndBrandModel.dart';
import 'home_remote_ds.dart';


class HomeRemoteDSImpl implements HomeRemoteDS {
  ApiManager apiManager;

  HomeRemoteDSImpl(this.apiManager);

  @override
  Future<Either<Failures, CategoryAndBrandModel>> getBrands() async {
    try {
      Response response = await apiManager.getData(
        endPoint: EndPoints.getBrands,
      );
      CategoryAndBrandModel model =
          CategoryAndBrandModel.fromJson(response.data);
      return Right(model);
    } catch (e) {
      return Left(RemoteFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, CategoryAndBrandModel>> getCategory() async {
    try {
      Response response = await apiManager.getData(
        endPoint: EndPoints.getCategory,
      );
      CategoryAndBrandModel model =
          CategoryAndBrandModel.fromJson(response.data);
      return Right(model);
    } catch (e) {
      return Left(RemoteFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, CartModel>> addToCard(String id, String token) async {
    try {
      Response response = await apiManager.postData(
          endPoint: EndPoints.cart, body: {"productId": id}, token: token);

      CartModel cartModel = CartModel.fromJson(response.data);
      return Right(cartModel);
    } catch (e) {
      return Left(RemoteFailure(e.toString()));
    }
  }
}
