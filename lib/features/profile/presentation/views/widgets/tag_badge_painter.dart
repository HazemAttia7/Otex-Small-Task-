import 'package:flutter/material.dart';

class TagBadgeClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double xScaling = size.width / 135;
    final double yScaling = size.height / 31;
    path.lineTo(0 * xScaling, 0 * yScaling);
    path.cubicTo(
      0 * xScaling,
      0 * yScaling,
      135 * xScaling,
      0 * yScaling,
      135 * xScaling,
      0 * yScaling,
    );
    path.cubicTo(
      135 * xScaling,
      0 * yScaling,
      135 * xScaling,
      31 * yScaling,
      135 * xScaling,
      31 * yScaling,
    );
    path.cubicTo(
      135 * xScaling,
      31 * yScaling,
      0 * xScaling,
      31 * yScaling,
      0 * xScaling,
      31 * yScaling,
    );
    path.cubicTo(
      0 * xScaling,
      31 * yScaling,
      9.5 * xScaling,
      16.1739 * yScaling,
      9.5 * xScaling,
      16.1739 * yScaling,
    );
    path.cubicTo(
      9.5 * xScaling,
      16.1739 * yScaling,
      0 * xScaling,
      0 * yScaling,
      0 * xScaling,
      0 * yScaling,
    );
    path.cubicTo(
      0 * xScaling,
      0 * yScaling,
      0 * xScaling,
      0 * yScaling,
      0 * xScaling,
      0 * yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
