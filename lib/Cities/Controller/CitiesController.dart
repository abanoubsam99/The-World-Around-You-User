import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:the_world_around_you_user/Cities/Model/CitiesMolel.dart';
import 'package:the_world_around_you_user/const.dart';

class CitiesController {
  CitiesModel _citiesModel=CitiesModel();

  Future<CitiesModel> GetCities({int id}) async {
    var dio = Dio();

    final response = await dio.get(MyConstants().urlBasic+'GetCity',
      options: Options(
          headers: {
            'GovernorateID':id
          },
          followRedirects: false,
          validateStatus: (status) {
            return status <= 500;
          }
      ),
    );
    var data=json.decode(response.toString());
    _citiesModel=CitiesModel.fromJson(data);

    return _citiesModel;
  }
}
