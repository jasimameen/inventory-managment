import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/api_models/i_api_model_from_id_repo.dart';
import '../../domain/models/sales.dart';

part 'sales_bloc.freezed.dart';
part 'sales_event.dart';
part 'sales_state.dart';

@injectable
class SalesBloc extends Bloc<SalesEvent, SalesState> {
  final IApiModelFromIdRepo _apiModelsFromIdRepo;
  SalesBloc(this._apiModelsFromIdRepo) : super(SalesState.initial()) {
    on<_GetAllSalesByShopId>((event, emit) async {
      final responce = await _apiModelsFromIdRepo.getSales(event.shopId);
      final sales =
          responce.where((element) => element.shop == event.shopId).toList();
      emit(state.copyWith(salesList: sales));
    });
  }
}
