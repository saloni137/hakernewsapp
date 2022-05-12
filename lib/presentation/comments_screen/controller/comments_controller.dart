import 'package:hakernewsapp/data/models/8863Json/get8863_json_resp.dart';
import 'package:hakernewsapp/presentation/comments_screen/models/group21listview_item_model.dart';

import '/core/app_export.dart';
import 'package:hakernewsapp/presentation/comments_screen/models/comments_model.dart';
import 'package:flutter/material.dart';
import 'package:hakernewsapp/data/models/2921983Json/get2921983_json_resp.dart';
import 'package:hakernewsapp/data/apiClient/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CommentsController extends GetxController with StateMixin<dynamic> {
  Rx<CommentsModel> commentsModelObj = CommentsModel().obs;

  GetCommentJsonResp getCommentsJsonResp = GetCommentJsonResp();

  Get8863JsonResp get8863JsonResp = Get8863JsonResp();

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

  void callFetch8863Json(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    // return Get.find<ApiClient>().fetch8863Json(onSuccess: (resp) {
    //   onFetch8863JsonSuccess(resp);
    //   if (successCall != null) {
    //     successCall();
    //   }
    // }, onError: (err) {
    //   onFetch8863JsonError(err);
    //   if (errCall != null) {
    //     errCall();
    //   }
    // });
  }

  void onFetch8863JsonSuccess(var response) {
    get8863JsonResp = Get8863JsonResp.fromJson(response);
  }

  void onFetch8863JsonError(var err) {
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

  void _onFetch8863JsonSuccess() {
    List<Group21listviewItemModel> group21listviewItemModelList = [];
    if (get8863JsonResp.allData!.isNotEmpty) {
      for (var element in get8863JsonResp.allData!) {
        var group21listviewItemModel = Group21listviewItemModel();
        group21listviewItemModel.aaronbrethorstTxt.value =
            element.by!.toString();
        group21listviewItemModel.twoHrsAgoTxt.value = element.time!.toString();
        group21listviewItemModel.yearoldBrTxt.value = element.title!.toString();
        group21listviewItemModelList.add(group21listviewItemModel);
      }
    }
    commentsModelObj.value.group21listviewItemList.value =
        group21listviewItemModelList;
  }

  void _onFetch8863JsonError() {}

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
