// ignore_for_file: constant_identifier_names


import '../../core/strings.dart';

class ApiEndpoints {
  static const district = BASE_URL + 'viewsets/district/';
  static const category = BASE_URL + 'viewsets/category/';
  static const town = BASE_URL + 'viewsets/town/';
  static const warehouse = BASE_URL + 'viewsets/warehouse/';
  static const sales = BASE_URL + 'viewsets/sales/';
  static const vehicle = BASE_URL + 'viewsets/vehicle/';
  static const errand = BASE_URL + 'viewsets/errand/';
  static const shop = BASE_URL + 'viewsets/shop/';
  static const stock = BASE_URL + 'viewsets/stock/';
  static const item = BASE_URL + 'viewsets/item/';
  static const route = BASE_URL + 'viewsets/route/';
  static const driver = BASE_URL + 'viewsets/driver/';

  static const accessTokenPath = BASE_URL + 'api/token/';
  static const refreshTokenPath = BASE_URL + 'api/token/refresh/';
}
