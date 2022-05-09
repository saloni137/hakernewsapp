class Get2921983JsonResp {
  String? by;
  int? id;
  List<int>? kids;
  int? parent;
  String? text;
  int? time;
  String? type;

  Get2921983JsonResp(
      {this.by,
      this.id,
      this.kids,
      this.parent,
      this.text,
      this.time,
      this.type});

  Get2921983JsonResp.fromJson(Map<String, dynamic> json) {
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
