import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'collecting_baskets_state.dart';

class CollectingBasketsCubit extends Cubit<CollectingBasketsState> {
  CollectingBasketsCubit() : super(CollectingBasketsInitial());
}
