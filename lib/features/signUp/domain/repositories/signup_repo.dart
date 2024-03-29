import 'package:dartz/dartz.dart';

import '../../../../core/error/failuers.dart';
import '../../data/models/request_data.dart';
import '../entities/UserEntity.dart';

abstract class SignupRepo {
  Future<Either<Failures, UserEntity>> signUp(RequestData requestData);
}
