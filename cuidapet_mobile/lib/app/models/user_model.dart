import 'dart:convert';

class UserModel {
  final String email;
  final String registerType;
  final String imgData;
  UserModel({
    required this.email,
    required this.registerType,
    required this.imgData,
  });

  UserModel.empty():
    email = '',
    registerType = '',
    imgData = '';
  

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'registerType': registerType,
      'imgData': imgData,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] ?? '',
      registerType: map['registerType'] ?? '',
      imgData: map['imgData'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
