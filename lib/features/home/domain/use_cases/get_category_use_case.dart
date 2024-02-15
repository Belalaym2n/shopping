import 'package:dartz/dartz.dart';


import '../../../../core/error/failuers.dart';
import '../entities/CategoryAndBrandEntity.dart';
import '../repositories/home_repo.dart';

class GetCategoryUseCase {
  HomeRepo homeRepo;

  GetCategoryUseCase(this.homeRepo);

  Future<Either<Failures, CategoryAndBrandEntity>> call() =>
      homeRepo.getCategory();
}
