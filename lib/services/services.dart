// Import LIBRARIES FILES PARTS PROVIDERS
//
// Import LIBRARIES
//import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
// Import FILES
import '../models/user_model.dart';

// Import PARTS
// PROVIDERS
final UserProvider = Provider<ApiServices>((ref) {
  return ApiServices();
});

//

class ApiServices {
  String endpoint = 'https://reqres.in/api/users?page=2';
  Future<List<UserModel>> getUsers() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      print(result);
      return result.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
