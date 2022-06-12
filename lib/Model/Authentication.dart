import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

class Authen {
  final Dio dio = Dio();

  Future<Response> registerUser(var userData) async {
    try {
      Response response = await dio.post(
        'https://project-evently.herokuapp.com/api/v1/user/create', //ENDPONT URL
        data: jsonEncode(userData), //REQUEST BODY

        options: Options(
          headers: {
            'Accept': 'application/json',
            'authorization': 'pass your key(optional)'
          },
        ),
      );
      //returns the successful json object
      return response.data;
    } on DioError catch (e) {
      //returns the error object if there is
      return e.response!.data;
    }
  }
}
