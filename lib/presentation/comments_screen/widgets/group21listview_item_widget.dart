import '../controller/comments_controller.dart';
import '../models/group21listview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hakernewsapp/core/app_export.dart';

// ignore: must_be_immutable
class Group21listviewItemWidget extends StatelessWidget {
  Group21listviewItemWidget(this.group21listviewItemModelObj);

  Group21listviewItemModel group21listviewItemModelObj;

  var controller = Get.find<CommentsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: EdgeInsets.only(
          right: getHorizontalSize(
            16.00,
          ),
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
    );
  }
}
