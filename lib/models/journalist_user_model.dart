import 'package:flutter/material.dart';

class JournalistUserModel{
  final String passKey;
  final String secretKey;
  final String uid;
  final String userName;

  JournalistUserModel({required this.passKey,required this.secretKey,required this.uid,required this.userName});

  factory JournalistUserModel.fromMap(Map<String, String> data) {
    return JournalistUserModel(
      passKey: data['passKey'].toString() ,
      secretKey: data['secretKey'].toString(),
      uid: data['uid'].toString(),
      userName: data['userName'].toString()
    );
  }

  Map<String, String> toMap() {
    return {
      'passKey': passKey,
      'secretKey': secretKey,
      'uid': uid,
      'userName': userName
    };
  }
}