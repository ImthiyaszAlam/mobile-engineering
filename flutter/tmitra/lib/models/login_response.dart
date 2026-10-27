class LoginResponse {
  final User user;
  final String access;
  final String refresh;

  LoginResponse({
    required this.user,
    required this.access,
    required this.refresh,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      user: User.fromJson(json['user']),
      access: json['access'],
      refresh: json['refresh'],
    );
  }
}

class User {
  final int id;
  final String mobileNumber;
  final String fullname;
  final String role;
  final String referenceCode;
  final bool isActive;

  User({
    required this.id,
    required this.mobileNumber,
    required this.fullname,
    required this.role,
    required this.referenceCode,
    required this.isActive,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      mobileNumber: json['mobile_number'],
      fullname: json['fullname'],
      role: json['role'],
      referenceCode: json['reference_code'],
      isActive: json['is_active'],
    );
  }
}