// import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class SpotlightController extends GetxController
    with GetTickerProviderStateMixin {
  // Reactive position of the spotlight
  Rx<Alignment> spotlightPosition = Alignment(0, 0).obs;

  // Reactive size of the spotlight
  Rx<double> spotlightRadius = .4.obs;

  late AnimationController animationController;
  late Animation<double> glowAnimation;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
  }

  // Update spotlight position
  void updateSpotlightPosition(DragUpdateDetails position, Size size) {
    Offset offsetPosition =
        Offset(position.localPosition.dx, position.localPosition.dy);
    spotlightPosition.value = Alignment(
      (offsetPosition.dx - size.width / 2) / (size.width / 2),
      (offsetPosition.dy - size.height / 2) / (size.height / 2),
    );
  }

  // Trigger glow animation
  void triggerGlow(double initialRadius, double glowRadius) {
    spotlightRadius.value = initialRadius;
    glowAnimation =
        Tween<double>(begin: initialRadius, end: glowRadius).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    )..addListener(() {
            spotlightRadius.value = glowAnimation.value;
          });

    animationController
      ..reset()
      ..forward().then((_) {
        glowAnimation =
            Tween<double>(begin: glowRadius, end: initialRadius).animate(
          CurvedAnimation(
              parent: animationController, curve: Curves.easeInOutBack),
        )..addListener(() {
                spotlightRadius.value = glowAnimation.value;
              });
        animationController.forward();
        // animationController.reset();
      });
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
