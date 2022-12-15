// Note: untuk emnjelankan ini harus upgrade flutter version

void main(List<String> args) {
  UserAuthException e = UserAuthException.invalidPassword;

  print(e.code);
}

// NAMED PARAMETER

class User {
  int id;
  String username;
  String fullName;
  int age;

  // Perubahannya  bebas meletakkan optional parameternya

  User(this.id, this.username, {this.fullName = "No name", required this.age});
}

// SUPER INITIALIZER

class Administrator extends User {
  Administrator administratorType;

  Administrator(super.id, super.username,
      {super.fullName = "No name",
      required super.age,
      required this.administratorType});
}

// ENCHANCED ENUM

enum UserAuthException {
  invalidPassword(100, "Wrong password. Please try again"),
  invalidUserName(200, "Username is not exist");

  final int code;
  final String description;

  const UserAuthException(this.code, this.description);
}

// extension UserAuthExtension on UserAuthException {
//   String get description {
//     if (name == "invalidPassword") {
//       return "Wrong password. Please try again";
//     } else {
//       return "Username is not exist";
//     }
//   }
// }
