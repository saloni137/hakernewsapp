import 'package:get/get.dart';
import 'comments_item_model.dart';

class CommentsModel {
  Rx<String> aaronbrethorstTxt = Rx('Lorem ipsum dolor sit amet');

  Rx<String> twoHrsAgoTxt = Rx('Lorem ipsum dolor sit amet');

  Rx<String> yearoldBrTxt = Rx('Lorem ipsum dolor sit amet');

  Rx<String> titleText = Rx('Lorem ipsum dolor sit amet');

  Rx<String> pointsTxt = Rx('110');

  RxList<CommentsItemModel> commentItemList =
      RxList.filled(2, CommentsItemModel());
}
