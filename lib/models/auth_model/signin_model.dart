class SignInModel {
  final bool status;
  final String message;
  final UserData data;
  final String token;

  SignInModel({
    required this.status,
    required this.message,
    required this.data,
    required this.token,
  });

  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return SignInModel(
      status: json['status'],
      message: json['message'],
      data: UserData.fromJson(json['data']),
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'data': data.toJson(),
      'token': token,
    };
  }
}

class UserData {
  final String id;
  final String email;

  UserData({
    required this.id,
    required this.email,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
    };
  }
}
