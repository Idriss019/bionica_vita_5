// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

part of 'staff_cubit.dart';

class StaffState extends Equatable {
  final List<StaffData> staffData;
  const StaffState({
    this.staffData = const [],
  });
  @override
  List<Object> get props => [
    staffData,
  ];

  StaffState copyWith({
    List<StaffData>? staffData,
  }) {
    return StaffState(
      staffData: staffData ?? this.staffData,
    );
  }
}
class StaffInitial extends StaffState {
}
