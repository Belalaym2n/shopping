
import 'package:e_commerce/features/signup/data/data_sources/remote/remote_ds.dart';
import 'package:e_commerce/features/signup/domain/entities/UserEntity.dart';
import 'package:e_commerce/features/signup/domain/repositories/signup_repo.dart';

import '../models/request_data.dart';

class SignUpRepoImpl implements SignupRepo {
  RemoteDataSource remoteDataSource;

  SignUpRepoImpl(this.remoteDataSource);

  @override
  Future< UserEntity> signUp(RequestData requestData) =>
      remoteDataSource.signUp(requestData);
}
