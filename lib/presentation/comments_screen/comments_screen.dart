import '../drawerx_draweritem/controller/drawerx_controller.dart';
import '../drawerx_draweritem/drawerx_draweritem.dart';
import 'controller/comments_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hakernewsapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CommentsScreen extends GetWidget<CommentsController> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: ColorConstant.whiteA700,
            drawer: DrawerxDraweritem(DrawerxController()),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration:
                            BoxDecoration(color: ColorConstant.whiteA700),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: ColorConstant.orange800),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  onTapImgMenu();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            16.60),
                                                        top: getVerticalSize(
                                                            13.00),
                                                        bottom: getVerticalSize(
                                                            13.00)),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            24.00),
                                                        width:
                                                            getHorizontalSize(
                                                                24.89),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgMenu1,
                                                            fit:
                                                                BoxFit.fill)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(17.00),
                                                    bottom:
                                                        getVerticalSize(13.00)),
                                                child: Text(
                                                    "lbl_hacker_news".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .textstylesofiapro16
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(16),
                                                            letterSpacing: 0.50,
                                                            height: 1.25))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(11.00),
                                                    right: getHorizontalSize(
                                                        16.60),
                                                    bottom:
                                                        getVerticalSize(11.00)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getSize(14.00)),
                                                    child: Image.asset(
                                                        ImageConstant
                                                            .imgEllipse1,
                                                        height: getVerticalSize(
                                                            28.00),
                                                        width:
                                                            getHorizontalSize(
                                                                29.04),
                                                        fit: BoxFit.fill)))
                                          ]))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(16.00),
                                      right: getHorizontalSize(10.00)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                bottom: getVerticalSize(63.00)),
                                            child: Image.asset(
                                                ImageConstant.imgPolygon1,
                                                height: getSize(19.00),
                                                width: getSize(19.00),
                                                fit: BoxFit.fill)),
                                        Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                          10.00)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                            "lbl_157_points".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .textstylesofiapro12
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            12),
                                                                    letterSpacing:
                                                                        0.40,
                                                                    height:
                                                                        1.33)),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        8.00)),
                                                            child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Obx(() => Text(
                                                                      controller
                                                                          .commentsModelObj
                                                                          .value
                                                                          .aaronbrethorstTxt
                                                                          .value,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle.textstylesofiapro121.copyWith(
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          letterSpacing:
                                                                              0.40,
                                                                          height:
                                                                              1.33))),
                                                                  Container(
                                                                      height: getSize(
                                                                          2.00),
                                                                      width: getSize(
                                                                          2.00),
                                                                      margin: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              4.00),
                                                                          top: getVerticalSize(
                                                                              7.00),
                                                                          bottom: getVerticalSize(
                                                                              7.00)),
                                                                      decoration: BoxDecoration(
                                                                          color: ColorConstant
                                                                              .gray500,
                                                                          borderRadius:
                                                                              BorderRadius.circular(getHorizontalSize(1.00)))),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              4.00)),
                                                                      child: Obx(() => Text(
                                                                          controller
                                                                              .commentsModelObj
                                                                              .value
                                                                              .twoHrsAgoTxt
                                                                              .value,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle.textstylesofiapro121.copyWith(
                                                                              fontSize: getFontSize(12),
                                                                              letterSpacing: 0.40,
                                                                              height: 1.33))))
                                                                ]))
                                                      ])),
                                              Container(
                                                  width:
                                                      getHorizontalSize(321.00),
                                                  margin: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          6.00)),
                                                  child: Obx(() => Text(
                                                      controller
                                                          .commentsModelObj
                                                          .value
                                                          .yearoldBrTxt
                                                          .value,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .textstylesofiapromedium16
                                                          .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                      16),
                                                              letterSpacing:
                                                                  0.50,
                                                              height: 1.25)))),
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                          10.00)),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: "lbl".tr,
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .black90060,
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                fontFamily:
                                                                    'Sofia Pro',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                letterSpacing:
                                                                    0.50,
                                                                height: 1.43)),
                                                        TextSpan(
                                                            text: "msg_guinnessworldre"
                                                                .tr,
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .black90060,
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                fontFamily:
                                                                    'Sofia Pro',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                letterSpacing:
                                                                    0.50,
                                                                height: 1.43,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline)),
                                                        TextSpan(
                                                            text: "lbl2".tr,
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .black90060,
                                                                fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                fontFamily:
                                                                    'Sofia Pro',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                letterSpacing:
                                                                    0.50,
                                                                height: 1.43))
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left))
                                            ])
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(25.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(353.00)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                bottom:
                                                    getVerticalSize(299.00)),
                                            child: Image.asset(
                                                ImageConstant.imgPolygon1,
                                                height: getSize(19.00),
                                                width: getSize(19.00),
                                                fit: BoxFit.fill)),
                                        Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: EdgeInsets.only(
                                                            right:
                                                                getHorizontalSize(
                                                                    10.00)),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                  "lbl_aaronbrethorst"
                                                                      .tr,
                                                                  overflow: TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle.textstylesofiapro121.copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              12),
                                                                      letterSpacing:
                                                                          0.40,
                                                                      height:
                                                                          1.33)),
                                                              Container(
                                                                  height:
                                                                      getSize(
                                                                          2.00),
                                                                  width:
                                                                      getSize(
                                                                          2.00),
                                                                  margin: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          4.00),
                                                                      top: getVerticalSize(
                                                                          7.00),
                                                                      bottom: getVerticalSize(
                                                                          7.00)),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant
                                                                          .gray500,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(1.00)))),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          4.00)),
                                                                  child: Text(
                                                                      "lbl_2_hrs_ago"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle.textstylesofiapro121.copyWith(
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          letterSpacing:
                                                                              0.40,
                                                                          height:
                                                                              1.33)))
                                                            ])),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                321.00),
                                                        margin: EdgeInsets.only(
                                                            top:
                                                                getVerticalSize(
                                                                    6.00)),
                                                        child: Text(
                                                            "msg_funny_thing_is"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .textstylesofiapro122
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            12),
                                                                    letterSpacing:
                                                                        0.40,
                                                                    height:
                                                                        1.33)))
                                                  ]),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top:
                                                          getVerticalSize(8.00),
                                                      right: getHorizontalSize(
                                                          10.00)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                            height:
                                                                getSize(16.00),
                                                            width:
                                                                getSize(16.00),
                                                            child: SvgPicture.asset(
                                                                ImageConstant
                                                                    .imgMessagecircle,
                                                                fit: BoxFit
                                                                    .fill)),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        8.00)),
                                                            child: Text(
                                                                "lbl_reply".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .textstylesofiapro122
                                                                    .copyWith(
                                                                        fontSize: getFontSize(
                                                                            12),
                                                                        letterSpacing:
                                                                            0.40,
                                                                        height:
                                                                            1.33)))
                                                      ]))
                                            ])
                                      ]))
                            ]))))));
  }

  onTapImgMenu() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
