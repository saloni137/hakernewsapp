import 'package:get/get.dart';
import 'group21listview_item_model.dart';

class CommentsModel {
  Rx<String> aaronbrethorstTxt = Rx('Lorem ipsum dolor sit amet');

  Rx<String> twoHrsAgoTxt = Rx('Lorem ipsum dolor sit amet');

  Rx<String> yearoldBrTxt = Rx('Lorem ipsum dolor sit amet');

  Rx<String> titleText = Rx('Lorem ipsum dolor sit amet');

  RxList<Group21listviewItemModel> group21listviewItemList =
      RxList.filled(2, Group21listviewItemModel());
}
