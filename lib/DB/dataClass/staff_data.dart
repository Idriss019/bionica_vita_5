// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class StaffData {
  final int id;
  final String login;
  final String password;
  final String position; // должность
  final List<String> storage;
  final String powersString;
  final List<Powers> powers;
  // final List<Powers> powers = powersTemplate
  //     .map(
  //       (power) => Powers(
  //         name: power.name,
  //         description: power.description,
  //       ),
  //     )
  //     .toList();
  // final List<String> powers; // список прав, получаемый из powersString
  // final List<Powers> powers = powersTemplate // права
  //     .map((power) => Powers(name: power.name, description: power.description))
  //     .toList();

  StaffData({
    required this.id,
    required this.login,
    required this.password,
    required this.position,
    required storage,
    required this.powersString,
    // required List <String> powers,
  }) : storage = storage.split(' '), // Разделение строки на список по пробелу
       powers = powersTemplate.map((power) {
         return Powers(
           page: power.page,
           name: power.name,
           description: power.description,
           // isActive: powersString.split(' ').contains(power.name), // Активировать право, если оно есть в строке
         );
       }).toList();

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'login': login,
      'password': password,
      'position': position,
      'storage': storage.join(' '),
      'powersString': powersString,
      // 'powers': powers.map((x) => x.toMap()).toList(),
    };
  }

  factory StaffData.fromMap(Map<String, dynamic> map) {
    return StaffData(
      id: map['id'] as int,
      login: map['login'] as String,
      password: map['password'] as String,
      position: map['position'] as String,
      storage: map['storage'].split(
        ' ',
      ), //List<String>.from((map['storage'] as List<String>),
      powersString: map['powersString'] as String,
      // powers: List<Powers>.from((map['powers'] as List<int>).map<Powers>((x) => Powers.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory StaffData.fromJson(String source) =>
      StaffData.fromMap(json.decode(source) as Map<String, dynamic>);
}

/// Права
class Powers {
  final String page;
  final String name;
  bool isActive;
  final String description;

  Powers({
    required this.page,
    required this.name,
    this.isActive = false,
    required this.description,
  });
}

/// Шаблон прав (НЕ используется напрямую)
final List<Powers> powersTemplate = [
  Powers(
    page: 'Персонал',
    name: 'Управление пользователями',
    description: 'Может создавать, редактировать и удалять пользователей.',
  ),
  Powers(
    page: 'Персонал',
    name: 'Управление складом',
    description: 'Может добавлять, редактировать и удалять товары на складе.',
  ),
  Powers(
    page: 'Персонал',
    name: 'Просмотр отчетов',
    description: 'Может просматривать отчеты о продажах и остатках на складе.',
  ),
];

List<String> storageList = [];
