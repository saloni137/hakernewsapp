import '/core/app_export.dart';
import 'package:hakernewsapp/presentation/splashscreen_screen/models/splashscreen_model.dart';

class SplashscreenController extends GetxController with StateMixin<dynamic> {
  Rx<SplashscreenModel> splashscreenModelObj = SplashscreenModel().obs;

  @override
  void onReady() {
    super.onReady();

    Get.offAllNamed(AppRoutes.homeScreen);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
