import 'package:flutter/material.dart';
import 'package:shayri_app/utils/app_colors.dart';

class ArcDesignWidget extends StatelessWidget {
  final Size size;

  const ArcDesignWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size,
      painter: ArcPainter(),
    );
  }
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    double padding = 20.0;

    // Set the width for the arcs
    double arcWidth = size.width * 0.6;

    // Draw the largest arc (light gray)
    paint.color = Colors.grey.shade300;
    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(size.width / 2, padding), // Centered horizontally, padded from the top
        radius: arcWidth , // Radius based on arcWidth
      ),
      3.14, // Start angle
      3.14, // Sweep angle
      true,
      paint,
    );

    // Draw the middle arc (medium gray)
    paint.color = Colors.grey.shade400;
    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(size.width / 2, padding),
        radius: arcWidth / 1.3, // 75% of the largest arc
      ),
      3.14,
      3.14,
      true,
      paint,
    );

    // Draw the smallest arc (AppColors.welcomePurple)
    paint.color = AppColors.welcomePurple;
    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(size.width / 2, padding),
        radius: arcWidth * 0.8 / 2,
      ),
      3.14,
      3.14,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
