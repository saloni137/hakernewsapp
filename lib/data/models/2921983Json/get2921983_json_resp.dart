class GetCommentJsonResp {
  String? by;
  int? descendants;
  int? id;
  List<Kids>? kids;
  int? score;
  int? time;
  String? title;
  String? type;
  String? url;

  GetCommentJsonResp(
      {this.by,
      this.descendants,
      this.id,
      this.kids,
      this.score,
      this.time,
      this.title,
      this.type,
      this.url});

  GetCommentJsonResp.fromJson(Map<String, dynamic> json) {
    by = json['by'];
    descendants = json['descendants'];
    id = json['id'];
    if (json['kids'] != null) {
      kids = <Kids>[];
      json['kids'].forEach((v) {
        kids?.add(Kids.fromJson(v));
      });
    }
    score = json['score'];
    time = json['time'];
    title = json['title'];
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.by != null) {
      data['by'] = this.by;
    }
    if (this.descendants != null) {
      data['descendants'] = this.descendants;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.kids != null) {
      data['kids'] = this.kids?.map((v) => v.toJson()).toList();
    }
    if (this.score != null) {
      data['score'] = this.score;
    }
    if (this.time != null) {
      data['time'] = this.time;
    }
    if (this.title != null) {
      data['title'] = this.title;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    return data;
  }
}

class Kids {
  String? by;
  int? id;
  int? parent;
  String? text;
  int? time;
  String? type;

  Kids({this.by, this.id, this.parent, this.text, this.time, this.type});

  Kids.fromJson(Map<String, dynamic> json) {
    by = json['by'];
    id = json['id'];
    parent = json['parent'];
    text = json['text'];
    time = json['time'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.by != null) {
      data['by'] = this.by;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.parent != null) {
      data['parent'] = this.parent;
    }
    if (this.text != null) {
      data['text'] = this.text;
    }
    if (this.time != null) {
      data['time'] = this.time;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    return data;
  }
}
