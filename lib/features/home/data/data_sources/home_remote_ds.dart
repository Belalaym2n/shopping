import 'package:dartz/dartz.dart';


import '../../../../core/error/failuers.dart';
import '../models/CartModel.dart';
import '../models/CategoryAndBrandModel.dart';

abstract class HomeRemoteDS {
  Future<Either<Failures, CategoryAndBrandModel>> getCategory();

  Future<Either<Failures, CategoryAndBrandModel>> getBrands();

  Future<Either<Failures, CartModel>> addToCard(String id, String token);
}
