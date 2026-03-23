import 'package:bionica_vita_5/DB/dataClass/staff_data.dart';
import 'package:bionica_vita_5/functions/password_service.dart';
import 'package:bionica_vita_5/pages/staff/requests/requestat_staff.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'staff_state.dart';

class StaffCubit extends Cubit<StaffState> {
  StaffCubit() : super(StaffInitial());

  Future<void> loadStaffData() async {
    // Fetch data from the auth request
    final authData = await requestAuth();
    // print('\nauthData: $authData');
    // Map the result to StaffData objects
    List<StaffData> staffData = [];
    for (var i in authData) {
      staffData.add(
        StaffData(
          id: i['id'],
          login: i['login'],
          password: i['password'],
          position: i['position'],
          storage: i['storage'],
          powersString: i['powersString'],
        ),
      );
    }
    // staffData.forEach((element) {
    //   print(
    //     'id: ${element.id}, login: ${element.login}, password: ${element.password}, position: ${element.position}, storage: ${element.storage}, powersString: ${element.powersString}',
    //   );
    // });
    // print('start');
    // print('\nstaffData: $staffData');
    emit(state.copyWith(staffData: staffData));
    // state.staffData.forEach((element) {
    //   print(
    //     'id: ${element.id}, login: ${element.login}, password: ${element.password}, position: ${element.position}, storage: ${element.storage}, powersString: ${element.powersString}',
    //   );
    // });
    // print('end');
  }

  String changeInput({
    required String password,
    required String retryPassword,
    required String login,
    required String position,
    required String storage,
    required String powersString,
  }) {
    if (login.isEmpty) {
      return 'Логин не может быть пустым';
    }
    if (position.isEmpty) {
      return 'Должность не может быть пустой';
    }
    if (storage.isEmpty) {
      return 'Склад не может быть пустым';
    }
    if (powersString.isEmpty) {
      return 'Код полномочий не может быть пустым';
    }
    if (password.length < 4) {
      return 'Пароль должен быть не менее 4 символов';
    }
    if (password != retryPassword) {
      return 'Пароли не совпадают';
    }
    for (var i in state.staffData) {
      if (i.login.toLowerCase() == login.toLowerCase()) {
        return 'Пользователь с таким логином уже существует';
      }
    }
    for (var i in state.staffData) {
      if (PasswordService.verifyPassword(password, i.password)) {
        return 'Пароль уже используется другим пользователем';
      }
    }

    /*
    1. проверка на совпадение паролей
    2. совпадение логинов
     */
    return '';
  }

  Future<void> createUser({
    required String login,
    required String password,
    required String position,
    required String storage,
    required String powersString,
  }) async {
    print('createUser');
    print(password);
    print(PasswordService.hashPassword(password));
    StaffData staff = StaffData(
      id: 0,
      login: login,
      password: PasswordService.hashPassword(password),
      position: position,
      storage: storage,
      powersString: powersString,
    );
    await requestCreateUser(staff);
  }
}
