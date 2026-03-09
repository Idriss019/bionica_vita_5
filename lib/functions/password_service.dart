import 'package:bcrypt/bcrypt.dart';

class PasswordService {
  // Хэширование пароля
  static String hashPassword(String password) {
    // Генерируем соль с фактором сложности 12
    String salt = BCrypt.gensalt(logRounds: 12);
    return BCrypt.hashpw(password, salt);
  }

  // Проверка пароля
  static bool verifyPassword(String password, String storedHash) {
    return BCrypt.checkpw(password, storedHash);
  }
}
