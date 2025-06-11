import 'package:caferat_app/src/common/constants/key_constant.dart';
import 'package:caferat_app/src/common/constants/url_constant.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthRemoteDataSource {
  Future<void> login(String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio = Dio();

  @override
  Future<void> login(String email, String password) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final response = await dio.post(
        UrlConstant.login,
        data: {'email': email, 'password': password},
      );
      final token = response.data['token'].toString();
      await prefs.setString(KeyConstant.accessToken, token);
    } catch (e) {
      rethrow;
    }
  }
}
