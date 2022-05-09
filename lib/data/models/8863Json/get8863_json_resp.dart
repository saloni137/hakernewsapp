class Get8863JsonResp {
  List<AllData>? allData;

  Get8863JsonResp({this.allData});

  Get8863JsonResp.fromJson(Map<String, dynamic> json) {
    if (json['allData'] != null) {
      allData = <AllData>[];
      json['allData'].forEach((v) {
        allData?.add(AllData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.allData != null) {
      data['allData'] = this.allData?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllData {
  String? by;
  int? descendants;
  int? id;
  List<int>? kids;
  int? score;
  int? time;
  String? title;
  String? type;
  String? url;

  AllData(
      {this.by,
      this.descendants,
      this.id,
      this.kids,
      this.score,
      this.time,
      this.title,
      this.type,
      this.url});

  AllData.fromJson(Map<String, dynamic> json) {
    by = json['by'];
    descendants = json['descendants'];
    id = json['id'];
    kids = json['kids'].cast<int>();
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
      data['kids'] = this.kids;
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
