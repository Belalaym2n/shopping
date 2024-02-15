import 'package:dartz/dartz.dart';

import '../../../../core/error/failuers.dart';
import '../../domain/entities/UserEntity.dart';
import '../../domain/repositories/signup_repo.dart';
import '../data_sources/remote/remote_ds.dart';
import '../models/request_data.dart';

class SignUpRepoImpl implements SignupRepo {
  RemoteDataSource remoteDataSource;

  SignUpRepoImpl(this.remoteDataSource);

  @override
  Future<Either<Failures, UserEntity>> signUp(RequestData requestData) =>
      remoteDataSource.signUp(requestData);
}
