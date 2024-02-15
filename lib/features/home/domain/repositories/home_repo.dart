import 'package:dartz/dartz.dart';


import '../../../../core/error/failuers.dart';
import '../../data/models/CartModel.dart';
import '../entities/CategoryAndBrandEntity.dart';

abstract class HomeRepo {
  Future<Either<Failures, CategoryAndBrandEntity>> getCategory();

  Future<Either<Failures, CartModel>> addToCart(String productId);

  Future<Either<Failures, CategoryAndBrandEntity>> getBrands();
}
