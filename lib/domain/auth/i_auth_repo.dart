import 'package:dartz/dartz.dart';

abstract class IAuthRepo {
  // implement auth function
  Future<bool> signInWithErrendId(String errendId);
}
