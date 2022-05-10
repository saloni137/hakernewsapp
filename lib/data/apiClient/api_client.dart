import 'package:hakernewsapp/core/app_export.dart';
import 'package:hakernewsapp/core/utils/progress_dialog_utils.dart';

class ApiClient extends GetConnect {
  var baseUrl = "https://hacker-news.firebaseio.com";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  Future fetchComments(id,
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response =
          await httpClient.get('/v0/item/$id.json?print=pretty');
      ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchPosts(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response topStoryResponse = await httpClient.get('/v0/topstories.json');
      if (topStoryResponse.statusCode == 200) {
        List<dynamic> postArray = [];
        List<dynamic> postArrayInt = topStoryResponse.body;
        for (var i = 0; i <= 5; i++) {
          Response response = await httpClient
              .get('/v0/item/${postArrayInt[i]}.json?print=pretty');
          if (response.statusCode == 200) {
            postArray.add(response.body);
          }
        }
        ProgressDialogUtils.hideProgressDialog();
        onSuccess!({'allData': postArray});
      } else {
        onError!(
          topStoryResponse.hasError
              ? topStoryResponse.statusText
              : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchTopStoriesJson(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get('/v0/topstories.json');
      ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : 'Something Went Wrong!',
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }
}
