import '../drawerx_draweritem/controller/drawerx_controller.dart';
import '../drawerx_draweritem/drawerx_draweritem.dart';
import '../home_screen/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hakernewsapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: ColorConstant.whiteA700,
            drawer: DrawerxDraweritem(DrawerxController()),
            body: SingleChildScrollView(
              child: Container(
                  decoration: BoxDecoration(color: ColorConstant.whiteA700),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: double.infinity,
                          decoration:
                              BoxDecoration(color: ColorConstant.whiteA700),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
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
                                                          left:
                                                              getHorizontalSize(
                                                                  16.60),
                                                          top: getVerticalSize(
                                                              11.00),
                                                          bottom:
                                                              getVerticalSize(
                                                                  13.00)),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  24.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  24.89),
                                                          child:
                                                              SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgMenu,
                                                                  fit: BoxFit
                                                                      .fill)))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          17.00),
                                                      bottom: getVerticalSize(
                                                          13.00)),
                                                  child: Text(
                                                      "lbl_hacker_news".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .textstylesofiapro16
                                                          .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                      16),
                                                              letterSpacing:
                                                                  0.50,
                                                              height: 1.25))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          11.00),
                                                      right: getHorizontalSize(
                                                          16.60),
                                                      bottom: getVerticalSize(
                                                          11.00)),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getSize(14.00)),
                                                      child: Image.asset(
                                                          ImageConstant
                                                              .imgEllipse1,
                                                          height:
                                                              getVerticalSize(
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
                                    child: Obx(() => ListView.builder(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: controller.homeModelObj.value
                                            .homeItemList.length,
                                        itemBuilder: (context, index) {
                                          HomeItemModel model = controller
                                              .homeModelObj
                                              .value
                                              .homeItemList[index];
                                          return HomeItemWidget(model,
                                              onTapImgMessagesquare:
                                                  onTapImgMessagesquare);
                                        })))
                              ])))),
            )));
  }

  onTapImgMessagesquare() {
    Get.toNamed(AppRoutes.commentsScreen);
  }

  onTapImgMenu() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
