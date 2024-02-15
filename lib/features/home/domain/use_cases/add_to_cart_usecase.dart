import 'package:dartz/dartz.dart';

import '../../../../core/error/failuers.dart';
import '../../data/models/CartModel.dart';
import '../repositories/home_repo.dart';

class AddCartUseCase {
  HomeRepo repo;

  AddCartUseCase(this.repo);

  Future<Either<Failures, CartModel>> call(String id) => repo.addToCart(id);
}
