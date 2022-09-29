import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// class AuthController{
//   Future loginUser() async {
//     const url = 'http://localhost:5050/api/v1/auth/google/login';
//
//     var response = await http.post(Uri.parse(url),
//       body: jsonEncode({
//         "username": ,
//         "password": ,
//       }));
//
//     if(response.statusCode == 200){
//       var loginArr = json.decode(response.body);
//       print(loginArr['token']);
//     }else{}
//   }
// }