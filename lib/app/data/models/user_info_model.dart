class UserInfo {
  String? token;
  String? nickName;

  UserInfo({this.token, this.nickName});

  UserInfo.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    nickName = json['nickName'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['token'] = token;
    data['nickName'] = nickName;
    return data;
  }
}
