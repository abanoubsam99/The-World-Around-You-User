import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:the_world_around_you_user/SubSections/Model/SubSectionsModel.dart';
import 'package:the_world_around_you_user/const.dart';
class SubSectionsController {
  SubSectionsModel _subSectionsModel=SubSectionsModel();
  int sectionID;
  SubSectionsController({@required this.sectionID});

  Future<SubSectionsModel> GetController() async {
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
    _subSectionsModel=SubSectionsModel.fromJson(data);

    return _subSectionsModel;
  }
}
