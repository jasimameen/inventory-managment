// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/errand/errand_bloc.dart' as _i24;
import '../../../application/route/route_bloc.dart' as _i19;
import '../../../application/sales/sales_bloc.dart' as _i20;
import '../../../application/shop/shop_bloc.dart' as _i21;
import '../../../application/stock/stock_bloc.dart' as _i22;
import '../../../application/warehouse/warehouse_bloc.dart' as _i23;
import '../../../infrastructure/api_models/api_model_from_id_repo_impl.dart'
    as _i4;
import '../../../infrastructure/api_models/api_models_repo_impl.dart' as _i6;
import '../../../infrastructure/auth/auth_repo_impl.dart' as _i8;
import '../../../infrastructure/errand/errand_repo_impl.dart' as _i10;
import '../../../infrastructure/route/route_repo_impl.dart' as _i12;
import '../../../infrastructure/shop/shop_repo_impl.dart' as _i14;
import '../../../infrastructure/stock/stock_repo_impl.dart' as _i16;
import '../../../infrastructure/warehouse/warehouse_repo_impl.dart' as _i18;
import '../../api_models/i_api_model_from_id_repo.dart' as _i3;
import '../../api_models/i_api_models_repo.dart' as _i5;
import '../../auth/i_auth_repo.dart' as _i7;
import '../../errand/i_errand_repo.dart' as _i9;
import '../../route/i_route_repo.dart' as _i11;
import '../../shop/i_shop_repo.dart' as _i13;
import '../../stock/i_stock_repo.dart' as _i15;
import '../../warehouse/i_warehouse_repo.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IApiModelFromIdRepo>(() => _i4.ApiModelFromIdRepoImpl());
  gh.factory<_i5.IApiModelsRepo>(() => _i6.ApiModelsRepoImpl());
  gh.lazySingleton<_i7.IAuthRepo>(() => _i8.AuthRepoImpl());
  gh.factory<_i9.IErrandRepo>(() => _i10.ErrandRepoImpl());
  gh.factory<_i11.IRouteRepo>(() => _i12.RouteRepoImpl());
  gh.lazySingleton<_i13.IShopRepo>(() => _i14.ShopRepoImpl());
  gh.factory<_i15.IStockRepo>(() => _i16.StockRepoImpl());
  gh.lazySingleton<_i17.IWareHouseRepo>(() => _i18.ShopRepoImpl());
  gh.factory<_i19.RouteBloc>(() => _i19.RouteBloc(get<_i11.IRouteRepo>()));
  gh.factory<_i20.SalesBloc>(
      () => _i20.SalesBloc(get<_i3.IApiModelFromIdRepo>()));
  gh.factory<_i21.ShopBloc>(() => _i21.ShopBloc(
      get<_i13.IShopRepo>(),
      get<_i5.IApiModelsRepo>(),
      get<_i3.IApiModelFromIdRepo>(),
      get<_i5.IApiModelsRepo>()));
  gh.factory<_i22.StockBloc>(() => _i22.StockBloc(get<_i15.IStockRepo>()));
  gh.factory<_i23.WarehouseBloc>(
      () => _i23.WarehouseBloc(get<_i17.IWareHouseRepo>()));
  gh.factory<_i24.ErrandBloc>(() => _i24.ErrandBloc(get<_i9.IErrandRepo>()));
  return get;
}
