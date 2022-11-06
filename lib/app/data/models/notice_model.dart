class Notice {
  int? pelicanBottleId;
  int? glassBottleId;

  Notice({this.pelicanBottleId, this.glassBottleId});

  Notice.fromJson(Map<String, dynamic> json) {
    pelicanBottleId = json['pelicanBottleId'];
    glassBottleId = json['glassBottleId'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['pelicanBottleId'] = pelicanBottleId;
    data['glassBottleId'] = glassBottleId;
    return data;
  }
}
