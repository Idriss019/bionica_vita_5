import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'costs_state.dart';

class CostsCubit extends Cubit<CostsState> {
  CostsCubit() : super(CostsInitial());
}
