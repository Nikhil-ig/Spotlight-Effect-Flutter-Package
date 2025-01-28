import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class SpotlightScreen extends StatelessWidget {
  const SpotlightScreen({
    super.key,
    required this.child,
    this.color = Colors.black,
    this.radius = .5,
  });

  /// Background content [Widget]
  final Widget child;

  /// Color of the spotlight
  final Color? color;

  /// Initial radius of the spotlight
  ///
  ///For example, if a radial gradient is painted on a box that is 100.0 pixels wide and 200.0 pixels tall, then a radius of 1.0 will place the 1.0 stop at 100.0 pixels from the [center].
  final double? radius;

  @override
  Widget build(BuildContext context) {
    final SpotlightController controller = Get.put(SpotlightController());
    controller.spotlightRadius.value = radius!;

    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (DragUpdateDetails position) {
          // Update the spotlight position as the user drags
          controller.updateSpotlightPosition(position, size);
        },
        onDoubleTap: () {
          // Trigger glow animation on double-tap
          controller.triggerGlow(radius!, radius! + 0.1);
        },
        child: Stack(
          children: [
            // Background content
            Positioned.fill(child: child),
            // Spotlight effect
            Obx(
              () => IgnorePointer(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        color!,
                      ],
                      radius: controller.spotlightRadius.value,
                      center: controller.spotlightPosition.value,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
