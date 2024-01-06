import 'package:e_commerce/features/signUp/data/data_sources/remote/remote_ds.dart';
import 'package:e_commerce/features/signUp/data/models/request_data.dart';
import 'package:e_commerce/features/signUp/domain/entities/UserEntity.dart';

import '../../domain/repo_domain/signUpRepo.dart';

class SignUpRepoImp implements SignUpRepo {
  RemoteDataSource remoteDataSource;

  SignUpRepoImp(this.remoteDataSource);

  @override
  Future<UserEntity> signUp(RequestData requestData) => remoteDataSource.signUP(requestData);
}
