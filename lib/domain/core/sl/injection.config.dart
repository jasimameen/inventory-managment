// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/shop/shop_bloc.dart' as _i9;
import '../../../application/warehouse/warehouse_bloc.dart' as _i10;
import '../../../infrastructure/auth/auth_repo_impl.dart' as _i4;
import '../../../infrastructure/shop/shop_repo_impl.dart' as _i6;
import '../../../infrastructure/warehouse/warehouse_repo_impl.dart' as _i8;
import '../../auth/i_auth_repo.dart' as _i3;
import '../../shop/i_shop_repo.dart' as _i5;
import '../../warehouse/i_warehouse_repo.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthRepo>(() => _i4.AuthRepoImpl());
  gh.lazySingleton<_i5.IShopRepo>(() => _i6.ShopRepoImpl());
  gh.lazySingleton<_i7.IWareHouseRepo>(() => _i8.ShopRepoImpl());
  gh.factory<_i9.ShopBloc>(() => _i9.ShopBloc(get<_i5.IShopRepo>()));
  gh.factory<_i10.WarehouseBloc>(
      () => _i10.WarehouseBloc(get<_i7.IWareHouseRepo>()));
  return get;
}
