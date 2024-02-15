import 'package:dartz/dartz.dart';


import '../../../../../core/error/failuers.dart';
import '../../../../signup/data/models/UserModel.dart';

abstract class LoginRemoteDS {
  Future<Either<Failures, UserModel>> login(String email, String password);
}
