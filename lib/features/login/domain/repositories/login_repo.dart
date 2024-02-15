import 'package:dartz/dartz.dart';

import '../../../../core/error/failuers.dart';
import '../../../signup/domain/entities/UserEntity.dart';

abstract class LoginRepo {
  Future<Either<Failures, UserEntity>> login(String email, String password);
}
