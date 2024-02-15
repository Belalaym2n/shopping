

import '../../../../../core/cache/shared_pref.dart';
import 'login_local_ds.dart';

class LoginLocalDSImpl implements LoginLocalDS {
  @override
  Future<bool> cacheToken(String token) {
    try {
      return CacheData.saveData("token", token);
    } catch (e) {
      throw Exception();
    }
  }
}
