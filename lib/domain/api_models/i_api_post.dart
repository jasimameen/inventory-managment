import '../models/models_exported.dart';

abstract class IApiPost {
  Future<bool> addSale(SalesModel salesModel);
}
