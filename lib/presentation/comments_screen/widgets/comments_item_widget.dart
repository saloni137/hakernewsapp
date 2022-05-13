import '../controller/comments_controller.dart';
import '../models/comments_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hakernewsapp/core/app_export.dart';

// ignore: must_be_immutable
class CommentsItemWidget extends StatelessWidget {
  CommentsItemWidget(this.commentsItemModelObj);

  CommentsItemModel commentsItemModelObj;

  var controller = Get.find<CommentsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          12.50,
        ),
        bottom: getVerticalSize(
          12.50,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: getVerticalSize(
                299.00,
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
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                16.00,
              ),
            ),
            child: Column(
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
                          Obx(
                            () => Text(
                              commentsItemModelObj.aaronbrethorstTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.textstylesofiapro121.copyWith(
                                fontSize: getFontSize(
                                  12,
                                ),
                                letterSpacing: 0.40,
                                height: 1.33,
                              ),
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
                            child: Obx(
                              () => Text(
                                commentsItemModelObj.hrsAgoTxt.value,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.textstylesofiapro121.copyWith(
                                  fontSize: getFontSize(
                                    12,
                                  ),
                                  letterSpacing: 0.40,
                                  height: 1.33,
                                ),
                              ),
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
                          commentsItemModelObj.descriptionTxt!.value,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.textstylesofiapro122.copyWith(
                            fontSize: getFontSize(
                              12,
                            ),
                            letterSpacing: 0.40,
                            height: 1.33,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      8.00,
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
                      Container(
                        height: getSize(
                          16.00,
                        ),
                        width: getSize(
                          16.00,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgMessagecircle,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            8.00,
                          ),
                        ),
                        child: Text(
                          "lbl_reply".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.textstylesofiapro122.copyWith(
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
        ],
      ),
    );
  }
}
