import 'package:dio/dio.dart';
import 'package:e_commerce/core/utils/constant.dart';

class ApiManager {
  Dio dio = Dio();

   Future<Response> getData({required String endPoint, required Map<String, dynamic> data}) {
    return dio.get(Constant.baseUrl + endPoint, queryParameters: data);
  }

  Future<Response> postData({required String endPoint, required Map<String, dynamic> body}){
    return  dio.post(Constant.baseUrl + endPoint, data: body);
  }
}
