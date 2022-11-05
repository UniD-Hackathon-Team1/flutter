class User {
  String? userId;
  String? password;

  User({this.userId, this.password});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['userId'] = userId;
    data['password'] = password;
    return data;
  }
}
