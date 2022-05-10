class GetCommentJsonResp {
  String? by;
  int? id;
  int? parent;
  String? title;
  int? time;
  String? type;

  GetCommentJsonResp(
      {this.by, this.id, this.parent, this.title, this.time, this.type});

  GetCommentJsonResp.fromJson(Map<String, dynamic> json) {
    by = json['by'];
    id = json['id'];
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
