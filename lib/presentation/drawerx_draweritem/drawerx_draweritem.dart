import 'controller/drawerx_controller.dart';
import 'package:flutter/material.dart';
import 'package:hakernewsapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DrawerxDraweritem extends StatelessWidget {
  DrawerxDraweritem(this.controller);

  DrawerxController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorConstant.orange800,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: getHorizontalSize(
                294.00,
              ),
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  30.00,
                ),
                top: getVerticalSize(
                  10.00,
                ),
                bottom: getVerticalSize(
                  10.00,
                ),
              ),
              decoration: AppDecoration.textstylesofiapro161,
              child: Text(
                "lbl_news".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.textstylesofiapro161.copyWith(
                  fontSize: getFontSize(
                    16,
                  ),
                  letterSpacing: 0.15,
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  onTapTxtNews() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
