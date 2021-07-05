import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_world_around_you_user/SubSubSections/Model/SubSubSectionModel.dart';
import 'package:the_world_around_you_user/const.dart';

class SubSubSectionsController {
  SubSubSectionModel _subSubSectionModel=SubSubSectionModel();
  int sectionID;
  SubSubSectionsController({@required this.sectionID});

  Future<SubSubSectionModel> GetSubSubSection() async {
    var dio = Dio();

    final response = await dio.get(MyConstants().urlBasic+'GetSection',
        options: Options(
        headers: {
        "SectionID":sectionID
        },
        followRedirects: false,
        validateStatus: (status) {
          return status <= 500;
        }
    ),
    );
    var data=json.decode(response.toString());
    _subSubSectionModel=SubSubSectionModel.fromJson(data);

    return _subSubSectionModel;
  }
}
