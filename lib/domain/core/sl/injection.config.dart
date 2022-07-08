// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/errand/errand_bloc.dart' as _i18;
import '../../../application/route/route_bloc.dart' as _i15;
import '../../../application/shop/shop_bloc.dart' as _i16;
import '../../../application/warehouse/warehouse_bloc.dart' as _i17;
import '../../../infrastructure/auth/auth_repo_impl.dart' as _i4;
import '../../../infrastructure/errand/errand_repo_impl.dart' as _i6;
import '../../../infrastructure/route/route_repo_impl.dart' as _i8;
import '../../../infrastructure/shop/shop_repo_impl.dart' as _i10;
import '../../../infrastructure/stock/stock_repo_impl.dart' as _i12;
import '../../../infrastructure/warehouse/warehouse_repo_impl.dart' as _i14;
import '../../auth/i_auth_repo.dart' as _i3;
import '../../errand/i_errand_repo.dart' as _i5;
import '../../route/i_route_repo.dart' as _i7;
import '../../shop/i_shop_repo.dart' as _i9;
import '../../stock/i_stock_repo.dart' as _i11;
import '../../warehouse/i_warehouse_repo.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthRepo>(() => _i4.AuthRepoImpl());
  gh.factory<_i5.IErrandRepo>(() => _i6.ErrandRepoImpl());
  gh.factory<_i7.IRouteRepo>(() => _i8.RouteRepoImpl());
  gh.lazySingleton<_i9.IShopRepo>(() => _i10.ShopRepoImpl());
  gh.factory<_i11.IStockRepo>(() => _i12.StockRepoImpl());
  gh.lazySingleton<_i13.IWareHouseRepo>(() => _i14.ShopRepoImpl());
  gh.factory<_i15.RouteBloc>(() => _i15.RouteBloc(get<_i7.IRouteRepo>()));
  gh.factory<_i16.ShopBloc>(() => _i16.ShopBloc(get<_i9.IShopRepo>()));
  gh.factory<_i17.WarehouseBloc>(
      () => _i17.WarehouseBloc(get<_i13.IWareHouseRepo>()));
  gh.factory<_i18.ErrandBloc>(() => _i18.ErrandBloc(get<_i5.IErrandRepo>()));
  return get;
}
