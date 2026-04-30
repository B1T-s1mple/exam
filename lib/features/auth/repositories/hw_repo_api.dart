import 'dart:convert';

import 'package:exam/features/auth/models/hw_model.dart';
import 'package:http/http.dart' as http;

class HwRepoApi {
  Future<List<HwModel>> getpost() async {
    try {
      final response = await http.get(
        Uri.parse('https://68a9cff5b115e67576ec277d.mockapi.io/users'),
        headers: {'Accept': 'application/json'},
      );
      final List data = jsonDecode(response.body);
      if (response.statusCode != 200 && response.statusCode != 201) {
        throw data.toString();
      }
      return data.map((e) => HwModel.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }



























  Future<List<HwModel>> updatepost() async {
    try {
      final response = await http.put(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        headers: {'Accept': 'application/json'},
      );
      final List data = jsonDecode(response.body);
      if (response.statusCode != 200 && response.statusCode != 201) {
        throw data.toString();
      }
      return data.map((e) => HwModel.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }































  

  Future<void> deletepost(String id) async {
    try {
      final response = await http.delete(
        Uri.parse('https://68a9cff5b115e67576ec277d.mockapi.io/users$id'),
        headers: {'Accept': 'application/json'},
      );
      if (response.statusCode != 200 || response.statusCode != 201) {
        throw response.statusCode;
      }
    } catch (e) {
      rethrow;
    }
  }
}
