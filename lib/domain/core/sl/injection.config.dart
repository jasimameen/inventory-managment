// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/errand/errand_bloc.dart' as _i15;
import '../../../application/shop/shop_bloc.dart' as _i13;
import '../../../application/warehouse/warehouse_bloc.dart' as _i14;
import '../../../infrastructure/auth/auth_repo_impl.dart' as _i4;
import '../../../infrastructure/errand/errand_repo_impl.dart' as _i6;
import '../../../infrastructure/shop/shop_repo_impl.dart' as _i8;
import '../../../infrastructure/stock/stock_repo_impl.dart' as _i10;
import '../../../infrastructure/warehouse/warehouse_repo_impl.dart' as _i12;
import '../../auth/i_auth_repo.dart' as _i3;
import '../../errand/i_errand_repo.dart' as _i5;
import '../../shop/i_shop_repo.dart' as _i7;
import '../../stock/i_stock_repo.dart' as _i9;
import '../../warehouse/i_warehouse_repo.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthRepo>(() => _i4.AuthRepoImpl());
  gh.factory<_i5.IErrandRepo>(() => _i6.ErrandRepoImpl());
  gh.lazySingleton<_i7.IShopRepo>(() => _i8.ShopRepoImpl());
  gh.factory<_i9.IStockRepo>(() => _i10.StockRepoImpl());
  gh.lazySingleton<_i11.IWareHouseRepo>(() => _i12.ShopRepoImpl());
  gh.factory<_i13.ShopBloc>(() => _i13.ShopBloc(get<_i7.IShopRepo>()));
  gh.factory<_i14.WarehouseBloc>(
      () => _i14.WarehouseBloc(get<_i11.IWareHouseRepo>()));
  gh.factory<_i15.ErrandBloc>(() => _i15.ErrandBloc(get<_i5.IErrandRepo>()));
  return get;
}
