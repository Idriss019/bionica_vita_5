
class StaffData {
  final int id;
  final String login;
  final String password;
  final String position; // должность
  final List<String> storage;
  final String powersString;
  final List<Powers> powers = powersTemplate // права
      .map((power) => Powers(name: power.name, description: power.description))
      .toList();

  StaffData({
    required this.id,
    required this.login,
    required this.password,
    required this.position,
    required this.storage,
    required this.powersString,
  });
}

/// Права
class Powers {
  final String name;
  bool isActive;
  final String description;

  Powers({
    required this.name,
    this.isActive = false,
    required this.description,
  });
}

/// Шаблон прав (НЕ используется напрямую)
final List<Powers> powersTemplate = [
  Powers(
    name: 'Управление пользователями',
    description: 'Может создавать, редактировать и удалять пользователей.',
  ),
  Powers(
    name: 'Управление складом',
    description: 'Может добавлять, редактировать и удалять товары на складе.',
  ),
  Powers(
    name: 'Просмотр отчетов',
    description: 'Может просматривать отчеты о продажах и остатках на складе.',
  ),
];

List<String> storageList = [];
