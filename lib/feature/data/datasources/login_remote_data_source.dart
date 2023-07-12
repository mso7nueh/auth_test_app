import 'dart:convert';
import 'package:auth_test_app/core/error/exception.dart';
import 'package:auth_test_app/core/error/failure.dart';
import 'package:http/http.dart' as http;

abstract class LoginRemoteDataSource {
  Future<String> login(String email, String password);
}

class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
  final http.Client client;

  LoginRemoteDataSourceImpl({required this.client});

  @override
  Future<String> login(String email, String password) async {
    final response = await client.post(
      Uri.parse('http://158.160.14.209/api/v1/auth/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'login': email,
        'password': password,
      }),
    );
    if (response.statusCode == 200) {
      final accessToken = jsonDecode(response.body)['accessToken'];
      return accessToken;
    } else if (response.statusCode == 401) {
      throw LoginFailure();
    } else {
      throw ServerException();
    }
  }
}
