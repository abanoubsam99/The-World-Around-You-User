import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_world_around_you_user/Streets/Model/AreaModel.dart';
import 'package:the_world_around_you_user/const.dart';

class AreaController {
  AreaModel _areaModel=AreaModel();

  Future<AreaModel> GetArea({int id }) async {
    var dio = Dio();

    final response = await dio.get(MyConstants().urlBasic+'GetArea',
      options: Options(
          headers: {
            'CityID':id
          },
          followRedirects: false,
          validateStatus: (status) {
            return status <= 500;
          }
      ),
    );
    var data=json.decode(response.toString());
    _areaModel=AreaModel.fromJson(data);

    return _areaModel;
  }


}
