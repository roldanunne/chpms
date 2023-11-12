// To parse this JSON data, do
//
//     final userData = userDataFromJson(jsonString);

import 'dart:convert';

UserData userDataFromJson(String str) => UserData.fromJson(json.decode(str));

String userDataToJson(UserData data) => json.encode(data.toJson());

class UserData {
  String userId;
  String userName;
  String userPassword;
  String userRole;
  String status;
  dynamic createdAt;

  UserData({
    required this.userId,
    required this.userName,
    required this.userPassword,
    required this.userRole,
    required this.status,
    required this.createdAt,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        userId: json["user_id"],
        userName: json["user_name"],
        userPassword: json["user_password"],
        userRole: json["user_role"],
        status: json["status"],
        createdAt: json["created_at"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "user_name": userName,
        "user_password": userPassword,
        "user_role": userRole,
        "status": status,
        "created_at": createdAt,
      };
}
