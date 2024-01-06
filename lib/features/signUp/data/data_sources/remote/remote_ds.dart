import 'package:e_commerce/features/signUp/data/models/UserModel.dart';
import 'package:e_commerce/features/signUp/data/models/request_data.dart';

 abstract class RemoteDataSource{

 Future<UserModel> signUP(RequestData requestData);
}