import '/core/app_export.dart';
import 'package:hakernewsapp/presentation/comments_screen/models/comments_model.dart';
import 'package:flutter/material.dart';
import 'package:hakernewsapp/data/models/2921983Json/get2921983_json_resp.dart';
import 'package:hakernewsapp/data/apiClient/api_client.dart';

class CommentsController extends GetxController with StateMixin<dynamic> {
  Rx<CommentsModel> commentsModelObj = CommentsModel().obs;

  Get2921983JsonResp get2921983JsonResp = Get2921983JsonResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetch2921983Json(
      successCall: _onFetch2921983JsonSuccess,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetch2921983Json(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetch2921983Json(onSuccess: (resp) {
      onFetch2921983JsonSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetch2921983JsonError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetch2921983JsonSuccess(var response) {
    get2921983JsonResp = Get2921983JsonResp.fromJson(response);
  }

  void onFetch2921983JsonError(var err) {
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

  void _onFetch2921983JsonSuccess() {
    commentsModelObj.value.aaronbrethorstTxt.value =
        get2921983JsonResp.by!.toString();
    commentsModelObj.value.twoHrsAgoTxt.value =
        get2921983JsonResp.time!.toString();
    commentsModelObj.value.yearoldBrTxt.value =
        get2921983JsonResp.text!.toString();
  }
}
