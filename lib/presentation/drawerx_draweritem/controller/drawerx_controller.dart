import '/core/app_export.dart';
import 'package:hakernewsapp/presentation/drawerx_draweritem/models/drawerx_model.dart';

class DrawerxController extends GetxController with StateMixin<dynamic> {
  Rx<DrawerxModel> drawerxModelObj = DrawerxModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
