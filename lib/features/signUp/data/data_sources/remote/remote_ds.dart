import 'package:e_commerce/features/signup/data/models/UserModel.dart';

import '../../models/request_data.dart';

abstract class RemoteDataSource {
  Future< UserModel> signUp(RequestData requestData);
}
