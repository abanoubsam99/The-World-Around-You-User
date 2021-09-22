import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'file:///F:/Flutter%20Projects/Special%20Projects/The%20world%20around%20you/FlutterProjects/the_world_around_you_admin/lib/Owner/Markets/AddMarket/Model/AddMarket.dart';
import 'package:the_world_around_you_user/Markets/Model/AllMarketModel.dart';
import 'package:the_world_around_you_user/const.dart';

class MarketController {
  AllMarketModel _allMarketModel=AllMarketModel();

  Future<AllMarketModel> GetMarket({int sectionID,int governorateID,int cityID}) async {
    var dio = Dio();

    final response = await dio.get(MyConstants().urlBasic+'GetSectionSubscribes',
      options: Options(
          headers: {
            'SectionID':sectionID,
            'GovernorateID':governorateID,
            'CityID':cityID,
          },
          followRedirects: false,
          validateStatus: (status) {
            return status <= 500;
          }
      ),
    );
    var data=json.decode(response.toString());
    _allMarketModel=AllMarketModel.fromJson(data);

    return _allMarketModel;
  }

}
