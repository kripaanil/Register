import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutterregistration/registerresponse.dart';


import 'package:flutterregistration/url.dart';

class ApiClass {
  //ValueNotifier<List<Datum>> productNotifier = ValueNotifier([]);
 //ApiClass._internal();
  static ApiClass instance = ApiClass();
  factory() {
    return instance;
  }

  final dio = Dio();
  final url = URL();

  ApiClass() {
    dio.options = BaseOptions(
      baseUrl: url.baseUrl,
      responseType: ResponseType.json,
   
    );
  }
  

  Future<RegisterResponse?> registerUserApi(FormData formdata) async {
    try {
      final result = await dio.post(url.registerEndpoint, data: formdata);
      return RegisterResponse.fromJson((result.data)!);
    } on DioException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }

  // Future<LoginResponse?> loginUserApi(FormData formData) async {
  //   try {
  //     final result = await dio.post(url.loginEndpoint, data: formData);
  //     return LoginResponse.fromJson(jsonDecode(result.data));
  //   } on DioError catch (e) {
  //     print(e);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

 
}
