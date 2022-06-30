// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../infrastructure/auth/auth_repo_impl.dart' as _i4;
import '../../../infrastructure/shop/shop_repo_impl.dart' as _i6;
import '../../auth/i_auth_repo.dart' as _i3;
import '../../shop/i_shop_repo.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthRepo>(() => _i4.AuthRepoImpl());
  gh.lazySingleton<_i5.IShopRepo>(() => _i6.ShopRepoImpl());
  return get;
}
