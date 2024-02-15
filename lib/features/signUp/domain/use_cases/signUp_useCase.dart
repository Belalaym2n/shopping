import 'package:dartz/dartz.dart';

import '../../../../core/error/failuers.dart';
import '../../data/models/request_data.dart';
import '../entities/UserEntity.dart';
import '../repositories/signup_repo.dart';

class SignUpUseCase {
  SignupRepo signupRepo;

  SignUpUseCase(this.signupRepo);

  Future<Either<Failures, UserEntity>> call(RequestData requestData) =>
      signupRepo.signUp(requestData);
}
