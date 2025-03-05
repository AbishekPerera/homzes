import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  String? token;
  String? expirationDate;
  var opacity = 0.60.obs;
  var logoScale = 0.85.obs;

  @override
  void onInit() {
    super.onInit();
    _animateLogo();
    _startAnimation();
  }

  void _animateLogo() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    opacity.value = 1.0;
    logoScale.value = 1.0;
  }

  Future<void> _startAnimation() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offNamed("/welcome-screen");
  }
}
