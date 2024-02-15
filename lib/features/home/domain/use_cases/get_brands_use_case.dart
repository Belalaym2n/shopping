import 'package:dartz/dartz.dart';


import '../../../../core/error/failuers.dart';
import '../entities/CategoryAndBrandEntity.dart';
import '../repositories/home_repo.dart';

class GetBrandsUseCase {
  HomeRepo homeRepo;

  GetBrandsUseCase(this.homeRepo);

  Future<Either<Failures, CategoryAndBrandEntity>> call() =>
      homeRepo.getBrands();
}
