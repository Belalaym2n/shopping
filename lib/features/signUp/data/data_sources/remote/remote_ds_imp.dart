import 'package:e_commerce/core/api/api_manager.dart';
import 'package:e_commerce/core/api/end_points.dart';
import 'package:e_commerce/features/signUp/data/data_sources/remote/remote_ds.dart';
import 'package:e_commerce/features/signUp/data/models/UserModel.dart';

class RemoteDataSourecImo implements RemoteDataSource {
  ApiManager apiManager ;



  RemoteDataSourecImo(this.apiManager);

  @override
  Future<UserModel> signUP() {

    apiManager.getData(endPoint: EndPoints.signUpIndPoint, data: {
      "name": "Ahmed Abd Al-Muti",
      "email":"ahmedeeeemuddssstti@gmail.com",
      "password":"Ahmed@123",
      "rePassword":"Ahmed@123",
      "phone":"01010700700"
    });


  }


}