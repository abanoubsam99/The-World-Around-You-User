import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_world_around_you_user/SellerDetails/Model/ProductsModel.dart';
import 'package:the_world_around_you_user/const.dart';
class ProductsController {
  ProductsModel _productsModel=ProductsModel();
  Future<ProductsModel> GetProducts({int id}) async {
    var dio = Dio();

    final response = await dio.get(MyConstants().urlBasic+'GetSectionSubscribesProducts',
      options: Options(
          headers: {
            'SectionUserSubsctiberID':id
          },
          followRedirects: false,
          validateStatus: (status) {
            return status <= 500;
          }
      ),
    );
    var data=json.decode(response.toString());
    _productsModel=ProductsModel.fromJson(data);

    return _productsModel;
  }
}
