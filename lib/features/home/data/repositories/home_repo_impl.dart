import 'package:dartz/dartz.dart';


import '../../../../core/cache/shared_pref.dart';
import '../../../../core/error/failuers.dart';
import '../../domain/entities/CategoryAndBrandEntity.dart';
import '../../domain/repositories/home_repo.dart';
import '../data_sources/home_remote_ds.dart';
import '../models/CartModel.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRemoteDS homeRemoteDS;

  HomeRepoImpl(this.homeRemoteDS);

  @override
  Future<Either<Failures, CategoryAndBrandEntity>> getBrands() {
    return homeRemoteDS.getBrands();
  }

  @override
  Future<Either<Failures, CategoryAndBrandEntity>> getCategory() {
    return homeRemoteDS.getCategory();
  }

  @override
  Future<Either<Failures, CartModel>> addToCart(String productId) async {
    String? token = await getToken();
    return homeRemoteDS.addToCard(productId, token!);
  }

  Future<String?> getToken() async {
    return await CacheData.getData("token");
  }
}
