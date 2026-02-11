import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'recalculation_state.dart';

class RecalculationCubit extends Cubit<RecalculationState> {
  RecalculationCubit() : super(RecalculationInitial());
}
