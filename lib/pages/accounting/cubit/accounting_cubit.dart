import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'accounting_state.dart';

class AccountingCubit extends Cubit<AccountingState> {
  AccountingCubit() : super(AccountingInitial());
}
