import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hakernewsapp/core/app_export.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.homeItemModelObj);

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          8.00,
        ),
        bottom: getVerticalSize(
          8.00,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  1.00,
                ),
                right: getHorizontalSize(
                  1.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: getVerticalSize(
                        94.00,
                      ),
                    ),
                    child: Image.asset(
                      ImageConstant.imgPolygon1,
                      height: getSize(
                        19.00,
                      ),
                      width: getSize(
                        19.00,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              right: getHorizontalSize(
                                10.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "lbl_157_points".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.textstylesofiapro12.copyWith(
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    letterSpacing: 0.40,
                                    height: 1.33,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      8.00,
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "lbl_aaronbrethorst".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.textstylesofiapro121
                                            .copyWith(
                                          fontSize: getFontSize(
                                            12,
                                          ),
                                          letterSpacing: 0.40,
                                          height: 1.33,
                                        ),
                                      ),
                                      Container(
                                        height: getSize(
                                          2.00,
                                        ),
                                        width: getSize(
                                          2.00,
                                        ),
                                        margin: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            4.00,
                                          ),
                                          top: getVerticalSize(
                                            7.00,
                                          ),
                                          bottom: getVerticalSize(
                                            7.00,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.gray500,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            4.00,
                                          ),
                                        ),
                                        child: Text(
                                          "lbl_2_hrs_ago".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.textstylesofiapro121
                                              .copyWith(
                                            fontSize: getFontSize(
                                              12,
                                            ),
                                            letterSpacing: 0.40,
                                            height: 1.33,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              321.00,
                            ),
                            margin: EdgeInsets.only(
                              top: getVerticalSize(
                                6.00,
                              ),
                            ),
                            child: Obx(
                              () => Text(
                                homeItemModelObj.k100yearoldBrTxt.value,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.textstylesofiapromedium16.copyWith(
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  letterSpacing: 0.50,
                                  height: 1.25,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              right: getHorizontalSize(
                                10.00,
                              ),
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl".tr,
                                    style: TextStyle(
                                      color: ColorConstant.black90060,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Sofia Pro',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.50,
                                      height: 1.43,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "msg_guinnessworldre".tr,
                                    style: TextStyle(
                                      color: ColorConstant.black90060,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Sofia Pro',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.50,
                                      height: 1.43,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "lbl2".tr,
                                    style: TextStyle(
                                      color: ColorConstant.black90060,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Sofia Pro',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.50,
                                      height: 1.43,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            17.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                onTapImgMessageSquare(homeItemModelObj.id);
                              },
                              child: Container(
                                height: getSize(
                                  14.00,
                                ),
                                width: getSize(
                                  14.00,
                                ),
                                child: SvgPicture.asset(
                                  ImageConstant.imgMessagesquare,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  6.00,
                                ),
                              ),
                              child: Text(
                                "lbl_510".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.textstylesofiapro14.copyWith(
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  letterSpacing: 0.50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              358.00,
            ),
            margin: EdgeInsets.only(
              top: getVerticalSize(
                16.00,
              ),
            ),
            decoration: BoxDecoration(
              color: ColorConstant.black900,
            ),
          ),
        ],
      ),
    );
  }
}

storeDataInPref(id) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString("currentItem", id);
}

onTapImgMessageSquare(id) {
  storeDataInPref(id);
  Get.toNamed(AppRoutes.commentsScreen);
}
