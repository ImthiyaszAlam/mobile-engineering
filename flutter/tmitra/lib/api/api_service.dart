import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tmitra/models/login_response.dart';

class ApiService {
  static const String baseUrl = 'https://mitra.trun.network';

  Future<LoginResponse> login(
    String mobile,
    String password,
  ) async {
    final url = Uri.parse(
      '$baseUrl/api/v1/user-management/login/',
    );

    final request = http.MultipartRequest('POST', url);

    request.fields['mobile_number'] = mobile;
    request.fields['password'] = password;

    final response = await request.send();

    print('Status: ${response.statusCode}');

    final responseBody = await response.stream.bytesToString();

    print('Response: $responseBody');

    if (response.statusCode == 200) {
      final json = jsonDecode(responseBody);

      return LoginResponse.fromJson(json);
    } else {
      throw Exception('Login failed: $responseBody');
    }
  }
}