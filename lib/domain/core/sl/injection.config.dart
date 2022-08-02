// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/errand/errand_bloc.dart' as _i31;
import '../../../application/login/login_bloc.dart' as _i25;
import '../../../application/route/route_bloc.dart' as _i26;
import '../../../application/sales/sales_bloc.dart' as _i27;
import '../../../application/shop/shop_bloc.dart' as _i28;
import '../../../application/stock/stock_bloc.dart' as _i29;
import '../../../application/warehouse/warehouse_bloc.dart' as _i30;
import '../../../infrastructure/api_models/api_delete_impl.dart' as _i4;
import '../../../infrastructure/api_models/api_get_all_impl.dart' as _i8;
import '../../../infrastructure/api_models/api_get_impl.dart' as _i6;
import '../../../infrastructure/api_models/api_post_impl.dart' as _i10;
import '../../../infrastructure/api_models/api_put_impl.dart' as _i12;
import '../../../infrastructure/auth/auth_repo_impl.dart' as _i14;
import '../../../infrastructure/errand/errand_repo_impl.dart' as _i16;
import '../../../infrastructure/route/route_repo_impl.dart' as _i18;
import '../../../infrastructure/shop/shop_repo_impl.dart' as _i20;
import '../../../infrastructure/stock/stock_repo_impl.dart' as _i22;
import '../../../infrastructure/warehouse/warehouse_repo_impl.dart' as _i24;
import '../../api_models/i_api_delete.dart' as _i3;
import '../../api_models/i_api_get.dart' as _i5;
import '../../api_models/i_api_get_all.dart' as _i7;
import '../../api_models/i_api_post.dart' as _i9;
import '../../api_models/i_api_put.dart' as _i11;
import '../../auth/i_auth_repo.dart' as _i13;
import '../../errand/i_errand_repo.dart' as _i15;
import '../../route/i_route_repo.dart' as _i17;
import '../../shop/i_shop_repo.dart' as _i19;
import '../../stock/i_stock_repo.dart' as _i21;
import '../../warehouse/i_warehouse_repo.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IApiDelete>(() => _i4.ApiPostImpl());
  gh.factory<_i5.IApiGet>(() => _i6.ApiGetImpl());
  gh.factory<_i7.IApiGetAll>(() => _i8.ApiGetAllImpl());
  gh.factory<_i9.IApiPost>(() => _i10.ApiPostImpl());
  gh.factory<_i11.IApiPut>(() => _i12.ApiPutImpl());
  gh.lazySingleton<_i13.IAuthRepo>(() => _i14.AuthRepoImpl());
  gh.factory<_i15.IErrandRepo>(() => _i16.ErrandRepoImpl());
  gh.factory<_i17.IRouteRepo>(() => _i18.RouteRepoImpl());
  gh.lazySingleton<_i19.IShopRepo>(() => _i20.ShopRepoImpl());
  gh.factory<_i21.IStockRepo>(() => _i22.StockRepoImpl());
  gh.lazySingleton<_i23.IWareHouseRepo>(() => _i24.ShopRepoImpl());
  gh.factory<_i25.LoginBloc>(() => _i25.LoginBloc());
  gh.factory<_i26.RouteBloc>(
      () => _i26.RouteBloc(get<_i5.IApiGet>(), get<_i7.IApiGetAll>()));
  gh.factory<_i27.SalesBloc>(() => _i27.SalesBloc(get<_i5.IApiGet>(),
      get<_i7.IApiGetAll>(), get<_i9.IApiPost>(), get<_i3.IApiDelete>()));
  gh.factory<_i28.ShopBloc>(() => _i28.ShopBloc(get<_i19.IShopRepo>(),
      get<_i5.IApiGet>(), get<_i7.IApiGetAll>(), get<_i9.IApiPost>()));
  gh.factory<_i29.StockBloc>(
      () => _i29.StockBloc(get<_i21.IStockRepo>(), get<_i7.IApiGetAll>()));
  gh.factory<_i30.WarehouseBloc>(
      () => _i30.WarehouseBloc(get<_i23.IWareHouseRepo>()));
  gh.factory<_i31.ErrandBloc>(() => _i31.ErrandBloc(get<_i15.IErrandRepo>()));
  return get;
}
