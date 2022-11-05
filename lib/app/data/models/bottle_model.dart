class Bottle {
  int? bottleId;
  List<Letter>? letter;

  Bottle({this.bottleId, this.letter});

  Bottle.fromJson(Map<String, dynamic> json) {
    bottleId = json['bottleId'];
    if (json['letter'] != null) {
      letter = <Letter>[];
      json['letter'].forEach((v) {
        letter!.add(Letter.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['bottleId'] = bottleId;
    if (letter != null) {
      data['letter'] = letter!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Letter {
  String? text;
  TimeDate? timeDate;

  Letter({this.text, this.timeDate});

  Letter.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    timeDate =
        json['timeDate'] != null ? TimeDate?.fromJson(json['timeDate']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['text'] = text;
    if (timeDate != null) {
      data['timeDate'] = timeDate!.toJson();
    }
    return data;
  }
}

class TimeDate {
  int? year;
  int? month;
  int? day;

  TimeDate({this.year, this.month, this.day});

  TimeDate.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    month = json['month'];
    day = json['day'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['year'] = year;
    data['month'] = month;
    data['day'] = day;
    return data;
  }
}
