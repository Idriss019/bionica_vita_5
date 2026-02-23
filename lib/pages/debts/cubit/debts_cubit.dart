import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'debts_state.dart';

class DebtsCubit extends Cubit<DebtsState> {
  DebtsCubit() : super(DebtsInitial());
}
