// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/errand/errand_bloc.dart' as _i27;
import '../../../application/login/login_bloc.dart' as _i21;
import '../../../application/route/route_bloc.dart' as _i22;
import '../../../application/sales/sales_bloc.dart' as _i23;
import '../../../application/shop/shop_bloc.dart' as _i24;
import '../../../application/stock/stock_bloc.dart' as _i25;
import '../../../application/warehouse/warehouse_bloc.dart' as _i26;
import '../../../infrastructure/api_models/api_get_all_impl.dart' as _i6;
import '../../../infrastructure/api_models/api_get_impl.dart' as _i4;
import '../../../infrastructure/api_models/api_post_impl.dart' as _i8;
import '../../../infrastructure/auth/auth_repo_impl.dart' as _i10;
import '../../../infrastructure/errand/errand_repo_impl.dart' as _i12;
import '../../../infrastructure/route/route_repo_impl.dart' as _i14;
import '../../../infrastructure/shop/shop_repo_impl.dart' as _i16;
import '../../../infrastructure/stock/stock_repo_impl.dart' as _i18;
import '../../../infrastructure/warehouse/warehouse_repo_impl.dart' as _i20;
import '../../api_models/i_api_get.dart' as _i3;
import '../../api_models/i_api_get_all.dart' as _i5;
import '../../api_models/i_api_post.dart' as _i7;
import '../../auth/i_auth_repo.dart' as _i9;
import '../../errand/i_errand_repo.dart' as _i11;
import '../../route/i_route_repo.dart' as _i13;
import '../../shop/i_shop_repo.dart' as _i15;
import '../../stock/i_stock_repo.dart' as _i17;
import '../../warehouse/i_warehouse_repo.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IApiGet>(() => _i4.ApiGetImpl());
  gh.factory<_i5.IApiGetAll>(() => _i6.ApiGetAllImpl());
  gh.factory<_i7.IApiPost>(() => _i8.ApiPostImpl());
  gh.lazySingleton<_i9.IAuthRepo>(() => _i10.AuthRepoImpl());
  gh.factory<_i11.IErrandRepo>(() => _i12.ErrandRepoImpl());
  gh.factory<_i13.IRouteRepo>(() => _i14.RouteRepoImpl());
  gh.lazySingleton<_i15.IShopRepo>(() => _i16.ShopRepoImpl());
  gh.factory<_i17.IStockRepo>(() => _i18.StockRepoImpl());
  gh.lazySingleton<_i19.IWareHouseRepo>(() => _i20.ShopRepoImpl());
  gh.factory<_i21.LoginBloc>(() => _i21.LoginBloc());
  gh.factory<_i22.RouteBloc>(
      () => _i22.RouteBloc(get<_i3.IApiGet>(), get<_i5.IApiGetAll>()));
  gh.factory<_i23.SalesBloc>(() => _i23.SalesBloc(
      get<_i3.IApiGet>(), get<_i5.IApiGetAll>(), get<_i7.IApiPost>()));
  gh.factory<_i24.ShopBloc>(() => _i24.ShopBloc(
      get<_i15.IShopRepo>(), get<_i3.IApiGet>(), get<_i5.IApiGetAll>()));
  gh.factory<_i25.StockBloc>(() => _i25.StockBloc(get<_i17.IStockRepo>()));
  gh.factory<_i26.WarehouseBloc>(
      () => _i26.WarehouseBloc(get<_i19.IWareHouseRepo>()));
  gh.factory<_i27.ErrandBloc>(() => _i27.ErrandBloc(get<_i11.IErrandRepo>()));
  return get;
}
