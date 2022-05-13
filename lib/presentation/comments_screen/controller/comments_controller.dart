import '/core/app_export.dart';
import 'package:hakernewsapp/presentation/comments_screen/models/comments_model.dart';
import 'package:flutter/material.dart';
import 'package:hakernewsapp/data/models/2921983Json/get2921983_json_resp.dart';
import 'package:hakernewsapp/data/apiClient/api_client.dart';
import '../models/comments_item_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CommentsController extends GetxController with StateMixin<dynamic> {
  Rx<CommentsModel> commentsModelObj = CommentsModel().obs;

  GetCommentJsonResp getCommentsJsonResp = GetCommentJsonResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchCommentsJson(
      successCall: _onFetchCommentsJsonSuccess,
      errCall: _onFetchCommentsJsonError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchCommentsJson(
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
    List<CommentsItemModel> commentsItemModelList = [];
    if (getCommentsJsonResp.kids!.isNotEmpty) {
      for (var i = 0; i < 5; i++) {
        var element = getCommentsJsonResp.kids![i];
        var commentsItemModel = CommentsItemModel();
        commentsItemModel.descriptionTxt?.value = element.text!.toString();
        commentsItemModel.aaronbrethorstTxt.value = element.by!.toString();
        commentsItemModel.hrsAgoTxt.value = element.time!.toString();
        commentsItemModelList.add(commentsItemModel);
      }
    }
    commentsModelObj.value.commentItemList.value = commentsItemModelList;
    commentsModelObj.value.aaronbrethorstTxt.value =
        getCommentsJsonResp.by!.toString();
    commentsModelObj.value.yearoldBrTxt.value =
        getCommentsJsonResp.title!.toString();
    commentsModelObj.value.pointsTxt.value =
        getCommentsJsonResp.score!.toString();
    commentsModelObj.value.twoHrsAgoTxt.value =
        getCommentsJsonResp.time!.toString();
  }

  void _onFetchCommentsJsonError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Error",
        middleText: "Data not found");
  }

  getSharedPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString('currentItem');
  }
}
