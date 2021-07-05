import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_world_around_you_user/Sections/Model/SectionModel.dart';
import 'package:the_world_around_you_user/const.dart';

class SectionController {
  SectionModel _sectionModel=SectionModel();

  Future<SectionModel> GetController() async {
    var dio = Dio();

    final response = await dio.get(MyConstants().urlBasic+'GetSection');
    var data=json.decode(response.toString());
    _sectionModel=SectionModel.fromJson(data);

    return _sectionModel;
  }
}
