class GetTopstoriesJsonResp {
  List<int>? allPosts;

  GetTopstoriesJsonResp({this.allPosts});

  GetTopstoriesJsonResp.fromJson(Map<String, dynamic> json) {
    allPosts = json['allPosts'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.allPosts != null) {
      data['allPosts'] = this.allPosts;
    }
    return data;
  }
}
