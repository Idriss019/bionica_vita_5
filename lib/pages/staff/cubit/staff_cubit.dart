import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'staff_state.dart';

class StaffCubit extends Cubit<StaffState> {
  StaffCubit() : super(StaffInitial());
}
