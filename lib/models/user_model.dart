// Import LIBRARIES FILES PARTS PROVIDERS
//
// Import LIBRARIES
//import 'package:flutter/material.dart';
// import 'dart:convert';
// Import FILES
// Import PARTS
// PROVIDERS

//

// To parse this JSON data, do final userModel = userModelFromJson(jsonString);

// UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));
// String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"] ?? 'First Name',
        lastName: json["last_name"] ?? 'Last Name',
        avatar: json["avatar"] ??
            'https://www.freepik.com/free-photo/galaxy-nature-aesthetic-background-starry-sky-mountain-remixed-media_17226410.htm',
      );

  // Map<String, dynamic> toJson() => {
  //     "id": id,
  //     "email": email,
  //     "first_name": firstName,
  //     "last_name": lastName,
  //     "avatar": avatar,
  // };
}
