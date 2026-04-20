import 'dart:convert';
import 'package:exam/features/auth/presentation/page/reset_password.dart';
import 'package:http/http.dart' as http;
import 'package:exam/features/auth/models/exam_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ExamRepo {
  static const String URL = "https://montra-mhys.onrender.com";

  Future<void> login(LoginRequest request) async {
    try {
      final response = await http.post(
        Uri.parse("$URL/login"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(request.toJson()),
      );
      if (response.statusCode == 400) {
        final data = jsonDecode(response.body);
        throw data['detail'];
      }
      final data = jsonDecode(response.body);
      final token = data['token'];
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', token);
    } catch (e) {
      throw 'ashibka: $e';
    }
  }

  Future<void> register(RegisterRequest request) async {
    try {
      final response = await http.post(
        Uri.parse('$URL/register'),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
        },
        body: jsonEncode(request.toJson()),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body);
        throw data.toString();
      }
      print(response.statusCode);
    } catch (e, s) {
      print(s);
      print(e);
      throw "ashibka: $e";
    }
  }

  Future<void> sendOtp(OtpRequest request) async {
    try {
      final response = await http.post(
        Uri.parse('$URL/confirm-otp'),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
        },
        body: jsonEncode(request.toJson()),
      );
      if (response.statusCode == 400) {
        throw jsonDecode(response.body).toString();
      }
      print(response.statusCode);
      print(response.body);
    } catch (e) {
      throw "Xatolik: $e";
    }
  }

  Future<void> forgotPassword({required String email}) async {
    final response = await http.post(
      Uri.parse("$URL/forgot-password"),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode({"email": email}),
    );
    print(response.body);
    if (response.statusCode != 200) {
      throw Exception("Error");
    }
  }

  Future<void> ResetPassword({
    required String new_password,
    required String email,
  }) async {
    final response = await http.post(
      Uri.parse("$URL/reset-password"),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode({"new_password": new_password, "email": email}),
    );

    if (response.statusCode != 200 ) {
      throw Exception("Error");
    }
  }

  static Future<HomeResponse> malumotla() async {
    final response = await http.get(
      Uri.parse('https://montra-mhys.onrender.com/home'),
    );

    if (response.statusCode == 200) {
      return HomeResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Xatolik: ${response.statusCode}");
    }
  }
}
