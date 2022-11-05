class User {
  String? id;
  String? password;

  User({this.id, this.password});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['password'] = password;
    return data;
  }
}
