import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'bringing_parcel_state.dart';

class BringingParcelCubit extends Cubit<BringingParcelState> {
  BringingParcelCubit() : super(BringingParcelInitial());
}
