import 'package:e_commerce/features/signUp/data/models/UserModel.dart';

 abstract class RemoteDataSource{

 Future<UserModel> signUP();
}