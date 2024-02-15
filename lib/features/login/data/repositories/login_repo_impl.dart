import 'package:dartz/dartz.dart';


import '../../../../core/error/failuers.dart';
import '../../../signup/domain/entities/UserEntity.dart';
import '../../domain/repositories/login_repo.dart';
import '../data_sources/local/login_local_ds.dart';
import '../data_sources/remote/remote_ds.dart';

class LoginRepoImpl implements LoginRepo {
  LoginRemoteDS loginRemoteDS;
  LoginLocalDS localDS;

  LoginRepoImpl(this.loginRemoteDS, this.localDS);

  @override
  Future<Either<Failures, UserEntity>> login(
      String email, String password) async {
    var res = await loginRemoteDS.login(email, password);
    if (res.isRight()) {
      res.fold((l) => null, (r) {
        cacheToken(r.token ?? "");
      });
    }
    return res;
  }

  Future<void> cacheToken(String token) async {
    await localDS.cacheToken(token);
  }
}
