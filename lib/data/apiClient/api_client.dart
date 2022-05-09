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

  Future fetch2921983Json(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response =
          await httpClient.get('/v0/item/2921983.json?print=pretty');
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
      Response response =
          await httpClient.get('/v0/item/8863.json?print=pretty');
      ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!({
          "allData": [
            response.body,
            response.body,
            response.body,
            response.body,
            response.body,
            response.body,
            response.body,
            response.body,
            response.body,
            response.body,
            response.body
          ]
        });
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

  Future fetchTopstoriesJson(
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
