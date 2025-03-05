import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homzes/constants/image_constants.dart';
import 'package:homzes/controllers/splash_screen/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SplashScreenController splashScreenController = Get.put(
    SplashScreenController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstants.bg1),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            color: Colors.black.withValues(alpha: 0.2),
            child: Obx(
              () => AnimatedScale(
                scale: splashScreenController.logoScale.value,
                duration: const Duration(seconds: 1),
                child: AnimatedOpacity(
                  opacity: splashScreenController.opacity.value,
                  duration: const Duration(seconds: 1),
                  child: SafeArea(
                    child: Center(
                      child: Image.asset(width: 400, ImageConstants.logoPng),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
