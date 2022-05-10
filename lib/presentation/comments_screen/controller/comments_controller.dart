import '/core/app_export.dart';
import 'package:hakernewsapp/presentation/comments_screen/models/comments_model.dart';
import 'package:flutter/material.dart';
import 'package:hakernewsapp/data/models/2921983Json/get2921983_json_resp.dart';
import 'package:hakernewsapp/data/apiClient/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CommentsController extends GetxController with StateMixin<dynamic> {
  Rx<CommentsModel> commentsModelObj = CommentsModel().obs;

  GetCommentJsonResp getCommentsJsonResp = GetCommentJsonResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchComments(
      successCall: _onFetchCommentsJsonSuccess,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchComments(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchComments(await getSharedPref(),
        onSuccess: (resp) {
      onFetchCommentsJsonSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetchCommentsJsonError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetchCommentsJsonSuccess(var response) {
    getCommentsJsonResp = GetCommentJsonResp.fromJson(response);
  }

  void onFetchCommentsJsonError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchCommentsJsonSuccess() {
    commentsModelObj.value.aaronbrethorstTxt.value =
        getCommentsJsonResp.by!.toString();
    commentsModelObj.value.twoHrsAgoTxt.value =
        getCommentsJsonResp.time!.toString();
    commentsModelObj.value.yearoldBrTxt.value =
        getCommentsJsonResp.title!.toString();
  }

  getSharedPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString('currentItem');
  }
}
