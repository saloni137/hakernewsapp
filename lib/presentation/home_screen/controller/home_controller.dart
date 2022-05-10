import '/core/app_export.dart';
import 'package:hakernewsapp/presentation/home_screen/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:hakernewsapp/data/models/8863Json/get8863_json_resp.dart';
import 'package:hakernewsapp/data/apiClient/api_client.dart';
import '../models/home_item_model.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  Rx<HomeModel> homeModelObj = HomeModel().obs;

  Get8863JsonResp get8863JsonResp = Get8863JsonResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetch8863Json(
      successCall: _onFetch8863JsonSuccess,
      errCall: _onFetch8863JsonError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetch8863Json(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchPosts(onSuccess: (resp) {
      onFetch8863JsonSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetch8863JsonError(err);
      if (errCall != null) {
        errCall();
      }
    });
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
    List<HomeItemModel> homeItemModelList = [];
    if (get8863JsonResp.allData! != null &&
        get8863JsonResp.allData!.isNotEmpty) {
      for (var element in get8863JsonResp.allData!) {
        var homeItemModel = HomeItemModel();
        homeItemModel.k100yearoldBrTxt.value = element.title!.toString();
        // homeItemModel.url.value = element.url!.toString();
        homeItemModel.aaronbrethorstTxt.value = element.by!.toString();
        homeItemModel.k2hrsagoTxt.value = element.time!.toString();
        homeItemModel.k157pointsTxt.value = element.score!.toString();
        homeItemModel.id = element.id!.toString();
        homeItemModelList.add(homeItemModel);
      }
    }
    homeModelObj.value.homeItemList.value = homeItemModelList;
  }

  void _onFetch8863JsonError() {}
}
