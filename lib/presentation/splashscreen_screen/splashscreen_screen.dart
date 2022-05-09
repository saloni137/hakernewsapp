import 'controller/splashscreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:hakernewsapp/core/app_export.dart';

class SplashscreenScreen extends GetWidget<SplashscreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.orange800,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration:
                            BoxDecoration(color: ColorConstant.orange800),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(410.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: Text("lbl_hacker_news".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle
                                          .textstylesofiaprosemibold30
                                          .copyWith(
                                              fontSize: getFontSize(30),
                                              letterSpacing: 0.15,
                                              height: 0.80)))
                            ]))))));
  }
}
