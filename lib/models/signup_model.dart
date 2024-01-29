class UserModelSignOut {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String confirmPassword;

  UserModelSignOut(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.confirmPassword});
}
