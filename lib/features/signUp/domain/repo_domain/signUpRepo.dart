import 'package:e_commerce/features/signUp/data/models/request_data.dart';
import 'package:e_commerce/features/signUp/domain/entities/UserEntity.dart';

abstract class SignUpRepo{

 Future<UserEntity>signUp(RequestData requestData);
}