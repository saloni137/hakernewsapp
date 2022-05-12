class GetCommentJsonResp {
  String? by;
  int? id;
  List<Kids>? kids;
  int? parent;
  String? title;
  int? time;
  String? type;

  GetCommentJsonResp(
      {this.by,
      this.id,
      this.kids,
      this.parent,
      this.title,
      this.time,
      this.type});

  GetCommentJsonResp.fromJson(Map<String, dynamic> json) {
    by = json['by'];
    id = json['id'];
    if (json['kids'] != null) {
      kids = <Kids>[];
      json['kids'].forEach((v) {
        kids?.add(Kids.fromJson(v));
      });
    }
    parent = json['parent'];
    title = json['title'];
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
    if (this.kids != null) {
      data['kids'] = this.kids?.map((v) => v.toJson()).toList();
    }
    if (this.parent != null) {
      data['parent'] = this.parent;
    }
    if (this.title != null) {
      data['title'] = this.title;
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

class Kids {
  String? by;
  int? id;
  List<int>? kids;
  int? parent;
  String? text;
  int? time;
  String? type;

  Kids(
      {this.by,
      this.id,
      this.kids,
      this.parent,
      this.text,
      this.time,
      this.type});

  Kids.fromJson(Map<String, dynamic> json) {
    by = json['by'];
    id = json['id'];
    kids = json['kids'].cast<int>();
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
    if (this.kids != null) {
      data['kids'] = this.kids;
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
